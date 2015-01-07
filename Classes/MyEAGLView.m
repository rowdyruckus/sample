/*

File: MyEAGLView.m
Abstract: Convenience class that wraps the CAEAGLLayer from CoreAnimation into a
UIView subclass.

Version: 1.8

*/

#import <QuartzCore/QuartzCore.h>

#import "MyEAGLView.h"
#import "CrashLandingAppDelegate.h"
//#import "FlurryAppCircle.h"

//CLASS IMPLEMENTATIONS:

@implementation MyEAGLView

@synthesize delegate=_delegate, autoresizesSurface=_autoresize, surfaceSize=_size, framebuffer = _framebuffer, pixelFormat = _format, depthFormat = _depthFormat, context = _context;

+ (Class) layerClass
{
	return [CAEAGLLayer class];
}

//- (BOOL) shouldautorotatetointerfaceorientation


- (BOOL) _createSurface
{
	CAEAGLLayer*			eaglLayer = (CAEAGLLayer*)[self layer];
	CGSize					newSize;
	GLuint					oldRenderbuffer;
	GLuint					oldFramebuffer;
	
	if(![EAGLContext setCurrentContext:_context]) {
		return NO;
	}
	
	newSize = [eaglLayer bounds].size;
	newSize.width = roundf(newSize.width);
	newSize.height = roundf(newSize.height);
	
	glGetIntegerv(GL_RENDERBUFFER_BINDING_OES, (GLint *) &oldRenderbuffer);
	glGetIntegerv(GL_FRAMEBUFFER_BINDING_OES, (GLint *) &oldFramebuffer);
	
	glGenRenderbuffersOES(1, &_renderbuffer);
	glBindRenderbufferOES(GL_RENDERBUFFER_OES, _renderbuffer);
	
	if(![_context renderbufferStorage:GL_RENDERBUFFER_OES fromDrawable:eaglLayer]) {
		glDeleteRenderbuffersOES(1, &_renderbuffer);
		glBindRenderbufferOES(GL_RENDERBUFFER_BINDING_OES, oldRenderbuffer);
		return NO;
	}
	
	glGenFramebuffersOES(1, &_framebuffer);
	glBindFramebufferOES(GL_FRAMEBUFFER_OES, _framebuffer);
	glFramebufferRenderbufferOES(GL_FRAMEBUFFER_OES, GL_COLOR_ATTACHMENT0_OES, GL_RENDERBUFFER_OES, _renderbuffer);
	if (_depthFormat) {
		glGenRenderbuffersOES(1, &_depthBuffer);
		glBindRenderbufferOES(GL_RENDERBUFFER_OES, _depthBuffer);
		glRenderbufferStorageOES(GL_RENDERBUFFER_OES, _depthFormat, newSize.width, newSize.height);
		glFramebufferRenderbufferOES(GL_FRAMEBUFFER_OES, GL_DEPTH_ATTACHMENT_OES, GL_RENDERBUFFER_OES, _depthBuffer);
	}
	first=0;
	_size = newSize;
	if(!_hasBeenCurrent) {
		glViewport(0, 0, newSize.width, newSize.height);
		glScissor(0, 0, newSize.width, newSize.height);
		_hasBeenCurrent = YES;
	}
	else {
		glBindFramebufferOES(GL_FRAMEBUFFER_OES, oldFramebuffer);
	}
	glBindRenderbufferOES(GL_RENDERBUFFER_OES, oldRenderbuffer);
	
	
	
	[_delegate didResizeEAGLSurfaceForView:self];
	
	return YES;
}

- (void) _destroySurface
{
	EAGLContext *oldContext = [EAGLContext currentContext];
	
	if (oldContext != _context)
		[EAGLContext setCurrentContext:_context];
	
	if(_depthFormat) {
		glDeleteRenderbuffersOES(1, &_depthBuffer);
		_depthBuffer = 0;
	}
	
	glDeleteRenderbuffersOES(1, &_renderbuffer);
	_renderbuffer = 0;
	
	glDeleteFramebuffersOES(1, &_framebuffer);
	_framebuffer = 0;
	
	if (oldContext != _context)
		[EAGLContext setCurrentContext:oldContext];
}

//The GL view is stored in the nib file. When it's unarchived it's sent - buds initWithCoder:
- (id)initWithCoder:(NSCoder*)coder {
	
	if ((self = [super initWithCoder:coder])) {
		CAEAGLLayer *eaglLayer = (CAEAGLLayer*)[self layer];
		
		[eaglLayer setDrawableProperties:[NSDictionary dictionaryWithObjectsAndKeys:[NSNumber numberWithBool:NO], kEAGLDrawablePropertyRetainedBacking, kEAGLColorFormatRGB565, kEAGLDrawablePropertyColorFormat, nil]];
		_format = kEAGLColorFormatRGB565;
		_depthFormat = 0;
		
		_context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES1];
		if(_context == nil) {
			[self release];
			return nil;
		}
		
		if(![self _createSurface]) {
			[self release];
			return nil;
		}
	}
	
	return self;
}


- (void) dealloc
{
	[self _destroySurface];
	
	[_context release];
	_context = nil;
	
	[super dealloc];
}

- (void) layoutSubviews
{
	CGRect				bounds = [self bounds];
	
	if(_autoresize && ((roundf(bounds.size.width) != _size.width) || (roundf(bounds.size.height) != _size.height))) {
		[self _destroySurface];
#if __DEBUG__
		REPORT_ERROR(@"Resizing surface from %fx%f to %fx%f", _size.width, _size.height, roundf(bounds.size.width), roundf(bounds.size.height));
#endif
		[self _createSurface];
	}
}

- (void) setAutoresizesEAGLSurface:(BOOL)autoresizesEAGLSurface;
{
	_autoresize = autoresizesEAGLSurface;
	if(_autoresize)
		[self layoutSubviews];
}

- (void) setCurrentContext
{
	if(![EAGLContext setCurrentContext:_context]) {
		printf("Failed to set current context %p in %s\n", _context, __FUNCTION__);
	}
}

- (BOOL) isCurrentContext
{
	return ([EAGLContext currentContext] == _context ? YES : NO);
}

- (void) clearCurrentContext
{
	if(![EAGLContext setCurrentContext:nil])
		printf("Failed to clear current context in %s\n", __FUNCTION__);
}

- (void) swapBuffers
{
	EAGLContext *oldContext = [EAGLContext currentContext];
	GLuint oldRenderbuffer;
	
	if(oldContext != _context)
		[EAGLContext setCurrentContext:_context];
	
	
	
	glGetIntegerv(GL_RENDERBUFFER_BINDING_OES, (GLint *) &oldRenderbuffer);
	glBindRenderbufferOES(GL_RENDERBUFFER_OES, _renderbuffer);
	
	if(![_context presentRenderbuffer:GL_RENDERBUFFER_OES])
		printf("Failed to swap renderbuffer in %s\n", __FUNCTION__);
	
	if(oldContext != _context)
		[EAGLContext setCurrentContext:oldContext];
    
   // [Mobclix startWithApplicationId:@"8413f5b1-de69-4f95-ae40-532a617438a7"];
      //     [Mobclix start];
    
    oneadrefreshcounter++;
    
    
//    if (oneadrefreshcounter<2){
//    int device=0;
//    
//    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
//	{
//		// The device is an iPad running iPhone 3.2 or later.
//		device=0;
//        NSLog(@"iPad");
// 
//	}
//	else
//	{
//        NSLog(@"iPhone");
//        
//		// The device is an iPhone or iPod touch.
//		device=1;
//   
//	}
//
//    
//    if(device==0) adView = [[[ MobclixAdViewiPad_728x90 alloc] initWithFrame:CGRectMake(-190.0f, 190.0f, 728, 90.0f)] autorelease];
//    else     adView = [[[MobclixAdViewiPhone_320x50 alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 320.0f, 50.0f)] autorelease];
//    if(device==0)  [adView setCenter:CGPointMake(45,512) ];
//    if(device==1)     [adView setCenter:CGPointMake(25,240) ];
//    adView.hidden=NO;
//    adView.transform = CGAffineTransformMakeRotation(M_PI / 2);
//    
//    [adView resumeAdAutoRefresh];
//    [self addSubview:adView];
//    }
//    else {
//     
//        [self bringSubviewToFront: adView];
//    
 //   } 
    
    
    
}

- (CGPoint) convertPointFromViewToSurface:(CGPoint)point
{
	CGRect				bounds = [self bounds];
	
	return CGPointMake((point.x - bounds.origin.x) / bounds.size.width * _size.width, (point.y - bounds.origin.y) / bounds.size.height * _size.height);
}

- (CGRect) convertRectFromViewToSurface:(CGRect)rect
{
	CGRect				bounds = [self bounds];
	
	return CGRectMake((rect.origin.x - bounds.origin.x) / bounds.size.width * _size.width, (rect.origin.y - bounds.origin.y) / bounds.size.height * _size.height, rect.size.width / bounds.size.width * _size.width, rect.size.height / bounds.size.height * _size.height);
}
////////////



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	CGPoint started;
	UITouch *touch = [touches anyObject];
	started = [touch locationInView:self];	
	//if (first==0) started.x=0;

	[(CrashLandingAppDelegate*)[[UIApplication sharedApplication] delegate] handlebegan:started withEvent:event];
	//int numTaps = [[touches anyObject] tapCount];
	//if(numTaps >= 2){ 
		//[self resetGame];
		//first=0; reset
	//[(CrashLandingAppDelegate*)[[UIApplication sharedApplication] delegate] resetGame];
	//}
	 }

 /*
- (void)dispatchFirstTouchAtPoint;{
 [(CrashLandingAppDelegate*)[[UIApplication sharedApplication] delegate] handledispatch];}

 
 }
*/
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
	CGPoint newpt;
	UITouch *touch = [touches anyObject];
	newpt = [touch locationInView:self];	
	
[(CrashLandingAppDelegate*)[[UIApplication sharedApplication] delegate] handleMoved:newpt withEvent:event];}

 
 
 
// A tap starts game play
- (void)touchesEnded:(NSSet*)touches withEvent:(UIEvent*)event {
	// Forward tap to application controller
	//glView._position.x=0;
	//Vector2D touch;
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
	{
		// The device is an iPad running iPhone 3.2 or later.
	//	device=0;
        NSLog(@"EAGL iPad");
        //        int shortSide=window.view.frame.size.width;
        //        int shortSide=self.view.frame.size.width;
        shortSide=768;
        longSide=1024;
	}
	else
	{
        NSLog(@"EAGL iPhone");
        
		// The device is an iPhone or iPod touch.
	//	device=1;
        shortSide=320;
        longSide=480;
	}
    

    
    
    
	CGPoint newpt;
	UITouch *touch = [touches anyObject];
	newpt = [touch locationInView:self];
	newpt.y=longSide-newpt.y;
	int numTaps = [[touches anyObject] tapCount];
	//if (first==0) newpt.x=0;
	
/*
	if ((first==0)&&(newpt.x>60-50)&&(newpt.x<60+50)&&(newpt.y>60-50)&&(newpt.y<60+50)){first=1;newpt.x=3;}    // START BUTTON FROM TITLE SCREEN
	
	if ((first==0)&&(newpt.x>160-150)&&(newpt.x<160+150)&&(newpt.y>160-150)&&(newpt.y<160+150)){first=0;newpt.x=0;} 
	
		if ((first==0)&&(newpt.x>160-150)&&(newpt.x<160+150)&&(newpt.y>360-150)&&(newpt.y<360+150)){first=0;newpt.x=2;}   // timer
	*/
		
	
	
//	 if(numTaps >= 2){ 
	//[self resetGame];
//		newpt.x= 10;}
	[(CrashLandingAppDelegate*)[[UIApplication sharedApplication] delegate] handleTap:newpt];
	//first=1;
}


 

@end
