//#import "FlurryAnalytics.h"
//#import "FlurryAdDelegate.h"
//#import "FlurryAppCircle.h"
//#import "FlurryOffer.h"



//#import "AdMobView.h"
#import <UIKit/UIKit.h>
#import <mach/mach_time.h>
#import "CrashLandingAppDelegate.h"
#import "MyEAGLView.h"
//#import <AudioToolbox/AudioServices.h>
//#import "SoundEngine.h"

// CONSTANTS water2.png
#define kUserNameDefaultKey			@"userName"   // NSString active levelct
#define kHighScoresDefaultKey		@"highScores" // NSArray of NSStrings handleTap

#define kAccelerometerFrequency		60// Hz
#define kFilteringFactor			0.1 // For filtering out gravitational effects

#define kRenderingFPS				30.0 // Hz clownspeed

#define kListenerDistance			1.0  // Used for creating a realistic sound field

// MACROS
// Converts degrees to radians for calculating the orientation of the rocket.
#define DEGREES_TO_RADIANS(__ANGLE__) ((__ANGLE__) / 180.0 * M_PI)

// Used to randomize the starting conditions of the game
#define RANDOM_SEED() srandom((unsigned)(mach_absolute_time() & 0xFFFFFFFF))

// Used to randomize the position of the base the rocket must land on.
#define RANDOM_FLOAT() ((float)random() / (float)INT32_MAX)

// CLASS INTERFACE sound
@interface CrashLandingAppDelegate ()
- (void) renderScene;
- (void) resetGame;
- (void) saveScore;
- (void) title;


@end

// CLASS IMPLEMENTATIONS
@implementation CrashLandingAppDelegate
@synthesize  myButton;
@synthesize  myButton2;
@synthesize sound1;
@synthesize sound2;
@synthesize sound3;
@synthesize sound4;
@synthesize sound5;
@synthesize sound6;
@synthesize sound7;
@synthesize sound8;

//@synthesize adView;

@synthesize  navigationController;

+ (void) initialize {
	if(self == [CrashLandingAppDelegate class]) {
		RANDOM_SEED();
		//Make sure we have a default set of high-scores in the preferences destroy lite
		[[NSUserDefaults standardUserDefaults] registerDefaults:[NSDictionary dictionaryWithObject:[NSArray array] forKey:kHighScoresDefaultKey]];
	}
}

/*

void uncaughtExceptionHandler(NSException *exception) {
 //   [FlurryAnalytics logError:@"Uncaught" message:@"Crash!" exception:exception];
}



    // -------------------------------------------------------------------------------
    // implement to do something when the data is available
    // currently just output debug message
- (void)dataAvailable {
    NSLog(@"Flurry data is available");
        //NSLog(@"There are %d ads available for this user.", [FlurryAppCircle getAppAdCount:@"USE_AN_UNIQUE_HOOK_NAME"]);
    [self addAdvBanner];
    
    
}
    // implement to do something when the data is unavailable // currently just output debug message

- (void)dataUnavailable {
    NSLog(@"Flurry data is unavailable");
}
    // implement to do something when the canvas will open // currently just output debug message

- (void)canvasWillDisplay:(NSString *)hook {
    NSLog(@"Flurry canvas will display:%@", hook);
}
    // implement to do something when the canvas will close
    // currently just output debug message

- (void)canvasWillClose {
    NSLog(@"Flurry canvas will close");
}
    // implement to do something when the takeover will open // currently just output debug message

- (void)takeoverWillDisplay:(NSString *)hook {
    NSLog(@"Flurry takeover will display:%@", hook);
}
    // implement to do something when the takeover will close
    // currently just output debug message

- (void)takeoverWillClose {
    NSLog(@"Flurry takeover will close");
}
    // -------------------------------------------------------------------------------


-(void) addAdvBanner {
    
    if (IS_APP_CIRCLE_ENABLE) {
        
        UIViewController *controller = [[[UIViewController alloc]init] autorelease];
            //controller.view.autoresizingMask = UIViewAutoresizingFlexibleBottomMargin;
        [window addSubview:controller.view];
        controller.view.transform = CGAffineTransformMakeRotation(M_PI / 2);
        
        
        if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
            {
                // The device is an iPad running iPhone 3.2 or later.
     //       banner = [FlurryAppCircle getHook:@"USE_AN_UNIQUE_HOOK_NAME"
        //                                 xLoc:-100.0 yLoc:810 view:controller.view];
            }
        else
            {
                // The device is an iPhone or iPod touch.
           // banner = [FlurryAppCircle getHook:@"USE_AN_UNIQUE_HOOK_NAME"
              //                           xLoc:-80.0 yLoc:352.0 view:controller.view];
            }
        
      
        
            // To update an existing banner with new ad:
       // [FlurryAppCircle updateHook:banner];
    }
    
}


-(void) removeAdvBanner {
    
    if (IS_APP_CIRCLE_ENABLE) {
            // To remove an existing banner from its parent view and hook in order to create additional banners on the same hook and parent view: 
 //       [FlurryAppCircle removeHook:banner];
        [banner removeFromSuperview];
    }
    
}

*/

- (void) applicationDidFinishLaunching:(UIApplication*)application {

    
    
        // sample fluury key:XVVC4QVE9PU2UGRPAAI3
        // add the flurry appCircle
//    [FlurryAppCircle setAppCircleEnabled:YES];
   //     [FlurryAppCircle setAppCircleDelegate:self];
        //[FlurryAnalytics startSession:@"XVVC4QVE9PU2UGRPAAI3"];
    
    
    
   // [adView2 resumeAdAutoRefresh];
    justFreeAppDaily=YES;
    version=1;
    
 //   NSSetUncaughtExceptionHandler(&uncaughtExceptionHandler);
if(version==0)
    
    version=0;
//    [FlurryAnalytics startSession:@"SCNJ3TPI32BPNP4R3QN6"];

if(version==1)
    
    version=1;
//    [FlurryAnalytics startSession:@"AQJBB3MEZXUFIX3GB6YS"];

//    [FlurryAppCircle setAppCircleEnabled:YES];
    
  //  UIView *banner = [FlurryAppCircle getHook:@"PUT_YOUR_HOOK_NAME_HERE" 
      //                                   xLoc:0 yLoc:0 view:self];
    
    //[self addSubview: banner];
    
    
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
	{
		// The device is an iPad running iPhone 3.2 or later.
		device=0;
        NSLog(@"iPad");
        //        int shortSide=window.view.frame.size.width;
        //        int shortSide=self.view.frame.size.width;
        shortSide=768;
        longSide=1024;
	}
	else
	{
        NSLog(@"iPhone");
        
		// The device is an iPhone or iPod touch.
		device=1;
        shortSide=320;
        longSide=480;
	}

    
	CGRect	rect;
    
	rect = [[UIScreen mainScreen] bounds];	

    [window setFrame:rect];

	jugglegame=YES;
	
	
	NSString *myExamplePath = [[NSBundle mainBundle] pathForResource:@"vb" ofType:@"caf"];
	
	sound1 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath] error:NULL];
	
	sound1.delegate = self;
	//[sound1 prepareToPlay];
	//sound1.volume=.25;
//	[sound1 play];// jugglega

	NSString *myExamplePath2 = [[NSBundle mainBundle] pathForResource:@"vb" ofType:@"caf"];
	sound2 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath2] error:NULL];
	sound2.delegate = self;
	sound2.volume=.7;

    NSString *myExamplePath3;
	if (version==0) 	myExamplePath3 = [[NSBundle mainBundle] pathForResource:@"futAmb" ofType:@"mp3"];
 	if (version==1)  myExamplePath3 = [[NSBundle mainBundle] pathForResource:@"beach" ofType:@"mp3"];
	sound3 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath3] error:NULL];
	sound3.numberOfLoops = -1;  
	sound3.volume=.7;
	sound3.delegate = self;
	[sound3 play];
	
    
    /*
	NSString *myExamplePath4 = [[NSBundle mainBundle] pathForResource:@"goodCheer" ofType:@"mp3"];
	sound4 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath4] error:NULL];
	sound4.delegate = self;
	sound4.volume=.7;
	sound4.volume=.3;
     */
     
	/*
	
	NSString *myExamplePath6 = [[NSBundle mainBundle] pathForResource:@"woot" ofType:@"caf"];
	sound6 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath6] error:NULL];
	sound6.delegate = self;
	*/
	NSString *myExamplePath7 = [[NSBundle mainBundle] pathForResource:@"gameover" ofType:@"caf"];
	sound7 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath7] error:NULL];
	sound7.delegate = self;
	
	/*
	NSString *myExamplePath8 = [[NSBundle mainBundle] pathForResource:@"wol" ofType:@"caf"];
	sound8 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath8] error:NULL];
	sound8.delegate = self;
	
	*/
	NSBundle *mainBundle= [NSBundle mainBundle];
	
	//	chomp=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"wol" ofType:@"caf"]] ;   //eaten++
	
	
	
	
	/*
	 
	 laser=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"laza88" ofType:@"caf"]] ;
	 //	laser=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"rr7" ofType:@"caf"]] ;
	 //timelow=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"timelow" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 
	 apple=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"wol" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 apple2=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"wol" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 //	apple3=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"puke" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 apple4=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"wol" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 
	 apple5=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"app09" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 
	 clap=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"clap" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 yea=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"yea" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 
	 bubblesamb=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"bubbles" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 
	 chomp=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"aud_chomp" ofType:@"caf"]] ;   //eaten++  aud_chomp
	 //laser=[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"rr7" ofType:@"caf"]] ;//Laser3Producl" ofType:@"caf"]] ;
	 //	win =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"fanfare" ofType:@"wav"]] ;  
	 win =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"kidscheer" ofType:@"caf"]] ;  // fanfare
	 win2 =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"fanfare" ofType:@"caf"]] ;  // fanfare
	 
	 lose =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"guitarlose" ofType:@"caf"]] ; //gameover
	 
	 stung =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"cry2" ofType:@"caf"]] ;  
	 pick =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"pop" ofType:@"caf"]] ;
	 calib =[[Sound alloc] initWithContentsOfFile:[mainBundle pathForResource:@"pop" ofType:@"caf"]] ;
	 //	}
	 */
	// Set up variable for starting the game
	_firstTap = YES;
	
	//Create an editable text field. This is used only when the user successfully lands the rocket.
	_textField = [[UITextField alloc] initWithFrame:CGRectMake(60, 214, 200, 30)];
	[_textField setDelegate:self];
	[_textField setBackgroundColor:[UIColor colorWithWhite:0.0 alpha:0.5]];
	[_textField setTextColor:[UIColor whiteColor]];
	[_textField setFont:[UIFont fontWithName:kFontName size:kStatusFontSize]];
	[_textField setPlaceholder:@"Tap 2 edit"];	
	
	//Set up OpenGL projection matrix
    glMatrixMode(GL_PROJECTION);
	glOrthof(0, rect.size.width, 0, rect.size.height, -1, 1);
	glMatrixMode(GL_MODELVIEW);
	
	//Initialize OpenGL states
	glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
	glEnable(GL_TEXTURE_2D);
	glTexEnvi(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_REPLACE);
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_TEXTURE_COORD_ARRAY);
	
	glEnable(GL_BLEND);
   
    
    
	
	myButton.hidden=YES;
	myButton2.hidden=YES;
	
    //Load the background texture and configure it  lander
	//_textures[kTexture_Title] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"lasertitle66.png"]];//lasertitle66.png"]]; lite
	
    
    if (version==1){
	_textures[kTexture_Background] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"sand768.png"]];
	_textures[kTexture_Title] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"sand768.png"]];//lasertitle66.png"]]; lite
	}
if (version==0)  _textures[kTexture_Background] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"field768.png"]];
if (version==0)	_textures[kTexture_Title] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"field768.png"]];//lasertitle66.png"]]; lite
	
    //_textures[kTexture_Background] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"sand768.png"]];
	//_textures[kTexture_Title] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"sand768.png"]];//lasertitle66.png"]]; lite
	
    
	glBindTexture(GL_TEXTURE_2D, [_textures[kTexture_Title] name]);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
	
	//Load other textures sharkdir
	bgCircle = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"wOrb.png"]];
	_textures[kTexture_Shark] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"//butt.png"]];
	_textures[kTexture_lasershot] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"lasershot.png"]];
	_textures[kTexture_bubbly] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"//spark.png"]];//bub45.png"]];
	
    if (version==0)
	_textures[kTexture_orca] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"soc.png"]];// lite  gator
if (version==1)
    	_textures[kTexture_orca] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"vb2.png"]];// lite  gator
	arrow = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"arrow.png"]];// lite  gator
//	_textures[kTexture_orca] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"soc.png"]];// lite  gator
	_textures[kTexture_orcainv] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"socike.png"]];
	_textures[kTexture_Shark2] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"//circgrad.png"]];    // [1]
	_textures[kTexture_Shark3] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"powerIcon.png"]];
	_textures[kTexture_Sharkinv3] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"piano@2x copy.png"]];
	//_textures[kTexture_Lander] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"shark57.png"]];
//	_textures[kTexture_Lander] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"ad40.png"]];
//	_textures[kTexture_Lander] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"freeAppBanner2x.png"]];
	_textures[kTexture_Landerinv] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"//freegr.png"]];
	_textures[kTexture_orcaopac] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"//freeblk.png"]];
	_textures[kTexture_twist] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"pause33.png"]];
	_textures[kTexture_redcirc] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"play33.png"]];
	
    
    
//    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://a3.mzstatic.com/us/r1000/076/Purple/e3/c8/cb/mzl.gvodeyuz.175x175-75.jpg"]];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://appsforhunger.com/Apps_For_Hunger/freeAppBanner2x.png"]];
    //    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://appsforhunger.com/Apps_For_Hunger/flute.mp3"]];
    [NSURLConnection connectionWithRequest:request delegate:self];
    
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    NSString *localFilePath = [documentsDirectory stringByAppendingPathComponent:@"pkm.jpg"];
  //  NSString *localFilePath = [documentsDirectory stringByAppendingPathComponent:@"abc.mp3"];
    //    NSData *thedata = NULL;
    //    NSData* theData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://a3.mzstatic.com/us/r1000/076/Purple/e3/c8/cb/mzl.gvodeyuz.175x175-75.jpg"]];
        NSData* theData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://appsforhunger.com/Apps_For_Hunger/freeAppBanner2x.png"]];
  //  NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:@"http://appsforhunger.com/Apps_For_Hunger/freeAppBanner2x.png"]];

//    NSData* theData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://appsforhunger.com/Apps_For_Hunger/flute.mp3"]];
    [theData writeToFile:localFilePath atomically:YES];
    
//    UIImage *img = [[UIImage alloc] initWithData:theData];
    
  //  NSString *myExamplePath4 = [[NSBundle mainBundle] pathForResource:@"abc" ofType:@"mp3"];
//	sound4 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:myExamplePath4] error:NULL];
//	sound4 = [[AVAudioPlayer alloc] initWithData:theData];
    UIImage *img = [[UIImage alloc] initWithData:theData];

	sound4.delegate = self;
    
  //  _textures[kTexture_Sharkinv3] = [[Texture2D alloc] initWithImage: img];
   // _textures[kTexture_orca] = [[Texture2D alloc] initWithImage: img];// lite  gator

    if(img!=nil) 
    {
        adServerIsNil=NO ;

    _textures[kTexture_Lander] = [[Texture2D alloc] initWithImage:img];
    }
    else 
    {
        NSLog(@"nil---****");
        adServerIsNil=YES;

        userClickedPackagedAd = [[NSUserDefaults standardUserDefaults] boolForKey:@"userClickedPackagedAd"];
        NSLog(@"userClickedPackagedAd: %i",userClickedPackagedAd);

  //      [[NSUserDefaults standardUserDefaults] setBool: YES forKey:@"userClickedPackagedAd"];
  //      userClickedPackagedAd=NO ;
        if (userClickedPackagedAd==YES) {
            //MOBCLIX
            
                // [Mobclix startWithApplicationId:@"8413f5b1-de69-4f95-ae40-532a617438a7"];
     //       [Mobclix start];
            
            
//            if(device==0) adView = [[[ MobclixAdViewiPad_728x90 alloc] initWithFrame:CGRectMake(-190.0f, 190.0f, 728, 90.0f)] autorelease];
//            else     adView = [[[MobclixAdViewiPhone_320x50 alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 320.0f, 50.0f)] autorelease];
//            if(device==0)  [adView setCenter:CGPointMake(45,512) ];
//            if(device==1)     [adView setCenter:CGPointMake(25,240) ];
//            adView.hidden=NO;
//            adView.transform = CGAffineTransformMakeRotation(M_PI / 2);
            
                //[adView resumeAdAutoRefresh];
                //[window addSubview:adView];
  //          UIViewController
        }
        else 
      //      _textures[kTexture_Lander] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"freeAppBanner2x.png"]];
        _textures[kTexture_Lander] = [[Texture2D alloc] initWithImage: [UIImage imageNamed:@"freeAppBanner.png"]];


    }
    
    CGRect contentRect2;
    if(device==1) contentRect2 = CGRectMake(0, 0, 320, 480);
    if(device==0) contentRect2 = CGRectMake(0, 0, 768, 1024);
    

    //  UPDATED 1/15 BLOCK
    CGSize result = [[UIScreen mainScreen] bounds].size;
    CGFloat scale = [UIScreen mainScreen].scale;
    result = CGSizeMake(result.width * scale, result.height * scale);
    
    if(device==1) contentRect2 = CGRectMake(0, 0, result.width * scale, result.height * scale);

    
    //            = CGRectMake(0, 0, 320, 480);
    glView.bounds = contentRect2;
   // CGRect				bounds = [glView bounds];
    
    /*
    glPushMatrix();
    
    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    glColor4f(1,1,1,1);
	//	glTranslatef(shortSide*.975, longSide*.975, 1);
    //		glTranslatef(0,0, 1);
    if (device==1) glScalef(.475, .475, 1);
    //   glScalef(2, 2, 1);
    
    [_textures[kTexture_Title] drawAtPoint:CGPointMake(shortSide*.5, longSide*.5)];
    glPopMatrix();
    
    */
    
    
    
	

	//afconvert -f caff -d LEI16@44100 -c 1 in.wav out.caf
	paused=NO;
//	_textures[kTexture_LabelAngle] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"  On/Off"] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:12];
	_textures[kTexture_LabelAngle] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"   "] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:12];
	
    if (device==1)
    _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Juggle"] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];

    else if (device==0)
        _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Juggle"] dimensions:CGSizeMake(164*2.133, 132*2.133) alignment:UITextAlignmentLeft fontName:kFontName fontSize:32];
    
	// Compute the land's "bounds" tap
	_landerBounds = CGRectMake(0, 0, 149, 149);
	_landerBounds = CGRectOffset(_landerBounds, -_landerBounds.size.width / 2, -_landerBounds.size.height / 2);
	/*
	 //Configure and start accelerometer
	 [[UIAccelerometer sharedAccelerometer] setUpdateInterval:(1.0 / kAccelerometerFrequency)];
	 [[UIAccelerometer sharedAccelerometer] setDelegate:self];
	 */
	//Render the Title frame 
    
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    
	glDisable(GL_BLEND);
	[_textures[kTexture_Title] drawInRect:[glView bounds]];
	glEnable(GL_BLEND);
	
    
    
    
    
    //lite=YES;
	//charc=1;
	//	[_textures[kTexture_Background] drawInRect:[glView bounds]];
	glPushMatrix();
	glTranslatef(shortSide*.5, longSide*.5, 1);
	glRotatef(-90, 0, 0, 1);
	//glScalef(.7, .7, 1);
	//	[_textures[kTexture_sun] drawAtPoint:CGPointZero];  good game  main
//	glScalef(1.5, 1.5, 1);
//	[_textures[kTexture_orca] drawAtPoint:CGPointZero];
	glPopMatrix();
	
	glPushMatrix();
	glTranslatef(150, 360, 1);
	glRotatef(205, 0, 0, 1);
	glScalef(.7, .7, 1);
	[_textures[kTexture_sun] drawAtPoint:CGPointZero];
	glScalef(1.5, 1.5, 1);
	[_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
	glPopMatrix();
	
	//Swap the framebuffer
	[glView swapBuffers];
//    [window bringSubviewToFront:adView];
//    [window sendSubviewToBack:adView];
    //[view bringSubviewToFront:adView];

	lite=YES;
	if(lite==YES){ // presse
	//	adMobAd.frame = CGRectMake(0, 402, 48, 320); // set the frame, in this case at the bottom of the screen
		
		//adMobAd.frame = CGRectMake(0, 432, 320, 48); // set the frame, in this case at the bottom of the screen
		
	//	adMobAd = [AdMobView requestAdWithDelegate:self]; // start a new ad request
		//AdMobView *ad = [AdMobView requestAdWithDelegate:self]; // start a new ad request
		//ad.frame = CGRectMake(0, 432, 320, 48); // set the frame, in this case at the bottom of the screen
		//[self.window addSubview:ad]; // attach the ad to the view hierarchy; self.window is responsible for retaining the ad
		//[self.window addSubview:adMobAd]; // attach the ad to the view hierarchy; self.window is responsible for retaining the ad
		
	//	[adMobAd retain]; // this will be released when it loads (or fails to load)
	} // win2
	else{
		[myButton setFrame:CGRectMake(-44, 65, 38, 38)];//(12,270,30,30)];
		[myButton2 setFrame:CGRectMake(-44, 65, 38, 38)];//(12,270,30,30)];
	}
	//	_timer = [NSTimer scheduledTimerWithTimeInterval:(1.0 / 20) target:self selector:@selector(title) userInfo:nil repeats:YES];
	_timer = [NSTimer scheduledTimerWithTimeInterval:(1.0 / (30-10*device)) target:self selector:@selector(renderScene) userInfo:nil repeats:YES];
//	_timer = [NSTimer scheduledTimerWithTimeInterval:(.01) target:self selector:@selector(renderScene) userInfo:nil repeats:YES];
	
	[UIApplication sharedApplication].idleTimerDisabled = YES;
	//[bubblesamb play];//fuel

    //	adMobAd.frame =CGRectMake(-144, 198, 320, 38);

	//adMobAd.frame = CGRectMake(80, 0, 48, 320);
    //	adMobAd.transform = CGAffineTransformMakeRotation(M_PI / 2);
    
 
}
 /*   
    // create the request
    NSURLRequest *theRequest=[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.apple.com/"]
                                              cachePolicy:NSURLRequestUseProtocolCachePolicy
                                          timeoutInterval:60.0];
    // create the connection with the request
    // and start loading the data
    theConnection = [[NSURLConnection alloc] initWithRequest:theRequest delegate:self];
    if (theConnection) {
        // Create the NSMutableData that will hold
        // the received data
        // receivedData is declared as a method instance elsewhere
        receivedData=[[NSMutableData data] retain];
    } else {
        // inform the user that the download could not be made
    }
    
    
    
    Proxy *p = [[Proxy alloc] init];
    [p searchForSomethingAsync:searchText 
                      delegate:self 
               successSelector:@selector(didFinishWithData:) 
                  failSelector:@selector(didFailWithError:)];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    if (connection == theConnection)
    {
        // do something with the data object.
        [connectionSpecificDataObject appendData:data];
    }
}

- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    if (connection == theConnection)
    {
        if (delegate && [delegate respondsToSelector:successSelector])
            [delegate performSelector:successSelector 
                           withObject:connectionSpecificDataObject];
    }
    [connection release];
}


- (void)didFinishWithData:(NSData*)data;
{
    // Do something with data
}

- (void)didFailWithError:(NSError*)error
{
    // Do something with error
}

*/

- (NSString *)publisherId {
	//return @"a14a245c794b71f"; // donkey 
	return @"a14a378ff0bb4e3"; // sem 
	//	a14a24c9bd7e793
	//this should be prefilled; if not, get it from www.admob.com // a1498fd37029328 test
}

- (UIColor *)adBackgroundColor {
	//if (themecolor==2) return [UIColor purpleColor];
	//else if (themecolor==1) return [UIColor blueColor];
	//else  (themecolor==0)
	//else	
	//return [UIColor clearColor];//
	return [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:.75]; // this should be prefilled; if not, provide a UIColor
}

- (UIColor *)adTextColor {
	return [UIColor colorWithRed:1 green:1 blue:1 alpha:1]; // this should be prefilled; if not, provide a UIColor
}

- (BOOL)mayAskForLocation {
	return NO; // this should be prefilled; if not, see AdMobProtocolDelegate.h for instructions
}

// Sent when an ad request loaded an ad; this is a good opportunity to attach
// the ad view to the hierachy.
- (void)didReceiveAd:(AdMobView *)adView {
	NSLog(@"AdMob: Did receive ad");
	//self.view.hidden = NO;
	//if (orientmenus==UIDeviceOrientationPortrait)
	//	[myWebView setFrame:CGRectMake(0,45,320,342)];
	//if (orientmenus==UIDeviceOrientationPortrait){
	
	//if (orientmenus==UIDeviceOrientationPortrait)	adMobAd.frame = CGRectMake(0, 432, 320, 48); // set the frame, in this case at the bottom of the screen
	//	else if (orientmenus!=UIDeviceOrientationPortrait) 
//	adMobAd.frame =CGRectMake(-144, 198, 320, 38);
	//if (_timer!=nil)
	if(_state == kState_Running)myButton.hidden=NO;
	if(_state == kState_Running)myButton2.hidden=NO;
	
	//adMobAd.frame = CGRectMake(80, 0, 48, 320);
//	adMobAd.transform = CGAffineTransformMakeRotation(M_PI / 2);
	//[label setBackgroundColor:[UIColor clearColor]];
	//adMobAd.frame = CGRectMake(0, 382, 320, 48); // set the frame, in this case at the bottom of the screen
	//adMobAd.frame= 
	//adMobAd.frame = [self.view convertRect:self.view.frame fromView:self.view.superview]; // put the ad in the placeholder's location
	[window addSubview:adMobAd];
//	adMobAd.hidden=YES;
	
	//		[self.view addSubview:adMobAd];
	//	myButton2.enabled=NO;myButton2.hidden=YES;
	
	//[self.view addSubview:[[UIImage imageNamed:@"laserad.png"]drawAtPoint:CGPointZero]];//drawInRect:bounds];
	//[_textures[kTexture_Background]
	
	autoslider = [NSTimer scheduledTimerWithTimeInterval:AD_REFRESH_PERIOD target:self selector:@selector(refreshAd:) userInfo:nil repeats:YES];//}
}

// Request a new ad. If a new ad is successfully loaded, it will be animated into location.
- (void)refreshAd:(NSTimer *)timer {
	//if (orientmenus==UIDeviceOrientationPortrait) 
	[adMobAd requestFreshAd];
}

// Sent when an ad request failed to load an ad
- (void)didFailToReceiveAd:(AdMobView *)adView {
	NSLog(@"AdMob: Did fail to receive ad");
	[adMobAd release];
	adMobAd = nil;
	//	myButton2.enabled=YES;myButton2.hidden=NO;
	// we could start a new ad request here, but it is unlikely that anything has changed in the last few seconds,
	// so in the interests of the user's battery life, let's not
}


// Release resources when they are no longer needed
- (void) dealloc {
	//unsigned			i;
	
	[_statusTexture release];	
	//SoundEngine_Teardown();	
	for(i = 0; i < kNumTextures; ++i)
		[_textures[i] release];	
	[_textField release];
	[glView release];
	[window release];
	
	[super dealloc];
}

// Implement this method to get the lastest data from the accelerometer 
- (void)accelerometer:(UIAccelerometer*)accelerometer didAccelerate:(UIAcceleration*)acceleration {
	//Use a basic low-pass filter to only keep the gravity in the accelerometer values
	_accelerometer[0] =(acceleration.x * kFilteringFactor + _accelerometer[0] * (1.0 - kFilteringFactor));
	_accelerometer[1] = (acceleration.y * kFilteringFactor + _accelerometer[1] * (1.0 - kFilteringFactor));
	_accelerometer[2] = acceleration.z * kFilteringFactor + _accelerometer[2] * (1.0 - kFilteringFactor);
	//_accelerometer[0] = acceleration.x- (acceleration.x * kFilteringFactor + _accelerometer[0] * (1.0 - kFilteringFactor));
	//_accelerometer[1] = acceleration.y- (acceleration.y * kFilteringFactor + _accelerometer[1] * (1.0 - kFilteringFactor));
	//_accelerometer[2] = acceleration.z * kFilteringFactor + _accelerometer[2] * (1.0 - kFilteringFactor);
}
- (void)applicationDidBecomeActive:(UIApplication *)application {
	//Configure and start accelerometer touchdown
	[[UIAccelerometer sharedAccelerometer] setUpdateInterval:(1.0 / kAccelerometerFrequency)];
[[UIAccelerometer sharedAccelerometer] setDelegate:self];}



// Saves the user name and score after the user enters it in the provided text field. 
- (void)textFieldDidEndEditing:(UITextField*)textField {
	//Save name
	[[NSUserDefaults standardUserDefaults] setObject:[textField text] forKey:kUserNameDefaultKey];
	
	//Save the score
	[self saveScore];
}

// Terminates the editing session reset
- (BOOL)textFieldShouldReturn:(UITextField*)textField {
	//Terminate editing
	[textField resignFirstResponder];
	
	return YES;
}
#pragma mark -
#pragma mark === Touch handling  ===
#pragma mark


//application receivememorywarning


- (void)handlebegan:(CGPoint)point withEvent:(UIEvent *)event
{
	CGPoint touchpt;
	startTouch=point;
    if(device==0)    startTouch.y=1024-startTouch.y;//touchpt=startTouch;
    else startTouch.y=480-startTouch.y;
    
    touchpt=startTouch;
	
    if(device==0){
        startTouch.y=startTouch.y/2.133;
        startTouch.x=startTouch.x /2.4;//133;
    }
    
	NSSet *allTouches = [event allTouches];
	switch ([allTouches count]) {
			//  case 1: {
			//    CGPoint started = [[[allTouches allObjects] objectAtIndex:0] locationInView:self]; // not self.view
			// } break;
        case 2: {
			UITouch *touch1 = [[allTouches allObjects] objectAtIndex:0];
			UITouch *touch2 = [[allTouches allObjects] objectAtIndex:1];
			startTouch   = [touch1 locationInView:glView];	
			startTouch.y=480-startTouch.y;
			
			startTouch2   = [touch2 locationInView:glView];	
			startTouch2.y=480-startTouch2.y;
		} break;
    }	
	
	jugnum=1;//if ((jugnum>1)&&(juggleHi>20)) jugnum=3;

	if ((jugglegame==NO)&&(bubnum>55)) bubnum=5;

	if (jugglegame==YES){
		if (bubnum>33) bubnum=0;
		
		if ((juggling==YES)&&(paused==NO)){
			
			for (i=0;i<jugnum;i++){
			
			if ((fabs(startTouch.y-juggle[i].y)<75)&&(fabs(startTouch.x-juggle[i].x)<75)){
				
				juggleCount++;
			//	if (juggleCount>4)
				if (random()%1==0) [sound1 play];
				 if (random()%9==0) [sound4 play]; 
				 if (random()%12==0) [sound2 play]; 
			//	if (juggleCount%2==0)[sound2 play]; 
			//	else [sound1 play];
				juggleSpeed[i]+=.3;if (juggleSpeed[i]>18) juggleSpeed[i]=18;
				//	juggleSpeed=15;
				juggleDir[i]=atan((startTouch.y-juggle[i].y)/(startTouch.x-juggle[i].x));
				if ((startTouch.x-juggle[i].x)>0) juggleDir[i]+=3.1416;
				[_textures[kTexture_LabelSpeed] release];
				if(device==0)
                _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Rally: %i",juggleCount] dimensions:CGSizeMake(164*2.133, 132*2.133) alignment:UITextAlignmentLeft fontName:kFontName fontSize:32];
				if(device==1)
				_textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Rally: %i",juggleCount] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];
			}
				
				if ((fabs(startTouch2.y-juggle[i].y)<75)&&(fabs(startTouch2.x-juggle[i].x)<75)){
					
					juggleCount++;
					//	if (juggleCount>4)
				//	[sound2 play]; 
					//	if (juggleCount%2==0)[sound2 play]; 
					//	else [sound1 play];
					juggleSpeed[i]+=.3;if (juggleSpeed[i]>18) juggleSpeed[i]=18;
					//	juggleSpeed=15;
					juggleDir[i]=atan((startTouch2.y-juggle[i].y)/(startTouch2.x-juggle[i].x));
					if ((startTouch2.x-juggle[i].x)>0) juggleDir[i]+=3.1416;
					[_textures[kTexture_LabelSpeed] release];
					if( device==1)
                    _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Rally: %i",juggleCount] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];
                    else 
					_textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Rally: %i",juggleCount] dimensions:CGSizeMake(164*2.4, 132*2.133) alignment:UITextAlignmentLeft fontName:kFontName fontSize:32];
				}
				
				
			}
		}
		else if (juggling==NO){
			juggling=YES;
			for (i=0;i<jugnum;i++){

				juggle[i].x=80+i*20;//startTouch.x;
				juggle[i].y=10+460* (i%2);// startTouch.y;
			juggleDir[i]=fmod(random(), .5) -0.25;
			juggleSpeed[i]=7;
			juggleCount=0;
			paused=NO;}
		}
	}
	
	
	
	
	
	fade=(fade+1)%2;
	
	lasercounter=102;
	rnd=random()%6; _firstTap=NO;
	/*if (point.x>160){
		if (point.y>240)	[sound1 play];
		else 	[sound2 play];
		
		
	}
	else{
		if (point.y>240)	[sound3 play];
		else 	[sound4 play];
		
	}
	*/
	
//	int sprites=3;
//	int spread=55;
	//vis=NO;//
	//vis=YES;

	/*
	jugnum=3;
	if (vis==YES){
		sprites=13;
		sizePart=2;
		spread=155;}
	
	else{
		sprites=3;
		sizePart=.8;
		spread=55;}
*/
	
	
	//	bubnum=10;
	//counter=1;
	if (bubLife[bubnum-3]<7)  bubnum=0;
	
	
	for (i=bubnum;i<bubnum+sprites;i++){ //eaten++
		if (vis==YES){
			cc=i;spread=7;
			if(device==1){
            bub[i].x=startTouch.x+spread* cos(cc/sprites*6*pi);//
			bub[i].y=startTouch.y+spread* sin(cc/sprites*6*pi);
            }
            else{
            bub[i].x=(startTouch.x*2.133)+spread* cos(cc/sprites*6*pi);//
			bub[i].y=(startTouch.y*2.4)+spread* sin(cc/sprites*6*pi);
            }
			bubSpeed[i]=.1+trunc(cc*3/sprites);}		
		else{
		bub[i].x=startTouch.x+random()%spread-spread/2;//
			bub[i].y=startTouch.y+random()%spread-spread/2;	
			bubSpeed[i]=2;//.1+trunc(cc*3/sprites);//fmod(random(), 2.2)+1;// perfectCircle
}// random
		//	bub[i].x=startTouch.x+i/sprites*spread-spread/2;  // wannabe circle
		//	bub[i].y=startTouch.y+i/sprites*spread-spread/2;
		//bubDir[i]=fmod(random(),.3);
		
		bubDir[i]=atan((startTouch.y-bub[i].y)/(startTouch.x-bub[i].x))+1.6;
		if ((startTouch.x-bub[i].x)>0) bubDir[i]+=3.1416;
		
		// 	bubSpeed[i]=0+random()*0+ 5*(sin((bubDir[i])/1));// circleOffset
	//	bubSpeed[i]=.1+trunc(cc*3/sprites);//fmod(random(), 2.2)+1;// perfectCircle
		//	bubSpeed[i]=5*(fabs(sin((bubDir[i])/1))); // figureEight
		//	bubSpeed[i]=0*((sin((bubDir[i])/1)))+ 5*(cos((bubDir[i])/1));
		//	bubSpeed[i]=5*(fabs(sin((bubDir[i])/1)))+ 0*(cos((bubDir[i])/1));
		//bubSpeed[i]=random()%4+4+random()*0+ 5*(fabs(sin((bubDir[i])/1)))+ 0*(cos((bubDir[i])/1));//random()%10/10;
		bubLife[i]=30;
	}
	touchdown=1;
	bubnum+=sprites;
	
	if ((_firstTap==NO)&&(touchpt.x>0-150)&&(touchpt.x<0+50)&&(touchpt.y>0-50)&&(touchpt.y<0+88)){
		touchdown=1;
		
		aim=sharkdir*3.14/180+3.14/2+.1;
	}
	//	if (startTouch.x==0){
	//touchpt.x=0; sound sharkvs
	
	//	if (startTouch.y<2240){ charc=0;	
	//	glPushMatrix();
	//	glScalef(55, 55, 1);
	//[_textures[kTexture_Lander] drawAtPoint:CGPointZero];
	//	glPopMatrix();
	//	}
	
	
	//	if (startTouch.y>240) charc=1;}
}
/*
 -(void) dispatchFirstTouchAtPoint:(CGPoint)touchPoint forEvent:(UIEvent *)event
 {
 //int i;
 CGPoint xxt;
 //for (i=0;i<fleet;i++){
 xxt.x=touchPoint.x;
 //x[i]=xx;
 //speed[i]=0;
 
 
 }
 */
-(void)handleMoved:(CGPoint)currentT withEvent:(UIEvent *)event
// withEvent:(UIEvent *)event
{  
	currentTouch = currentT;//touchdown=1;
	
    if(device==1)  currentTouch.y= 480-currentTouch.y;
    if(device==0)  currentTouch.y= 1024-currentTouch.y;
	
    
    
	for (i=0;i<bubnum;i++){ //eaten++
        
        if(device==1){
		bubDir[i]=atan((currentTouch.y-bub[i].y)/(currentTouch.x-bub[i].x))+1.6;
		if ((currentTouch.x-bub[i].x)>0) bubDir[i]+=3.1416;
        }
        else{
            bubDir[i]=atan(((currentTouch.y)-bub[i].y*2.4)/(currentTouch.x-bub[i].x*2.133))+1.6;
            if (((currentTouch.x)-bub[i].x*2.133)>0) bubDir[i]+=3.1416;
        }
		bubDir[i]+=1.6;//x3.141;
		
		bubLife[i]=40;
		
	}
	
	NSSet *allTouches = [event allTouches];
	switch ([allTouches count]) {
			//  case 1: {
			//    CGPoint started = [[[allTouches allObjects] objectAtIndex:0] locationInView:self]; // not self.view
			// } break;
        case 2: {
			UITouch *touch1 = [[allTouches allObjects] objectAtIndex:0];
			UITouch *touch2 = [[allTouches allObjects] objectAtIndex:1];
			startTouch   = [touch1 locationInView:glView];	
			startTouch.y=480-startTouch.y;
			
			startTouch2   = [touch2 locationInView:glView];	
			startTouch2.y=480-startTouch2.y;
		} break;
    }	

    
    
}


- (IBAction)buttonPressed2:(id)sender {
	UIApplication * application=[UIApplication sharedApplication];
	[application openURL:
	 //		 [NSURL URLWithString:@"itms://www.itunes.com/apps/lasershark"]];
	 [NSURL URLWithString:@"http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=304515095&mt=8"]];
	//phobo	
}
- (IBAction)buttonPressed:(id)sender {
	//myButton.hidden=YES;
	//eaten=99;
	//	adMobAd.hidden=YES;
	
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:.75];
	//[UIView setAnimationCurve (UIViewAnimationCurveLinear)];
	//myButton.hidden=YES;
	[myButton setFrame:CGRectMake(-44, 65, 38, 38)];//(12,270,30,30)];
	[myButton2 setFrame:CGRectMake(-44, 65, 38, 38)];//(12,270,30,30)];
	
	
//	adMobAd.frame =CGRectMake(-44, 85, 320, 38);
	[UIView commitAnimations];
	
	
	
	
}
- (void)title {
	[_textures[kTexture_Title] drawInRect:[glView bounds]];

    
	
	glPushMatrix();
	//	glTranslatef(150, 360, 1);  //hold phone face up for better controls
	glTranslatef(150, 385, 1);
	
	glRotatef(205, 0, 0, 1);
	glScalef(.7, .7, 1);
	if (charc==1)[_textures[kTexture_sun] drawAtPoint:CGPointZero];
	glScalef(1.5, 1.5, 1);
	[_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
	glPopMatrix();
	
	glPushMatrix();
	//	glTranslatef(150, 120, 1);
	glTranslatef(150, 95, 1);
	
	glRotatef(205, 0, 0, 1);
	glScalef(.7, .7, 1);
	if (charc==0)[_textures[kTexture_sun] drawAtPoint:CGPointZero];
	glScalef(1.5, 1.5, 1);
	//[_textures[kTexture_orca] drawAtPoint:CGPointZero];
	glPopMatrix();
	//	[glView swapBuffers];
	[glView swapBuffers];
}
// Called by touchesEnded:withEvent: when the user taps the screen clownspeed
- (void)handleTap:(CGPoint)touchpt {

    
    if (device==1){    

    
	if (touchpt.x>260){
		if (touchpt.y>(400)){
			if (jugglegame==YES){
				if (juggleCount<3){ jugglegame=NO;vis=YES;} //!jugglegame;
			}
			else {
				jugglegame=YES;vis=NO;
			juggling=NO;paused=NO;
			}
		}}
	
	if ((jugglegame==YES)&&(juggling==YES)){
	if (touchpt.x>270){
		if (touchpt.y<60){
		paused=!paused;}}}
    }
    
    else {  
    
	if (touchpt.x>290*2.133){
		if (touchpt.y>(400*2.4)){
			if (jugglegame==YES){
				if (juggleCount<3){ jugglegame=NO;vis=YES;} //!jugglegame;
			}
			else {
				jugglegame=YES;vis=NO;
                juggling=NO;paused=NO;
			}
		}}
	
	if ((jugglegame==YES)&&(juggling==YES)){
        if (touchpt.x>308*2.133){
            if (touchpt.y<40*2.4){
                paused=!paused;}}}
}
	
	if (lite==YES){
        
        if (device==1){    
        
	if (touchpt.x<40){
		if (touchpt.y>320){
            if(adServerIsNil) [[NSUserDefaults standardUserDefaults] setBool: YES forKey:@"userClickedPackagedAd"];
            
			UIApplication * application=[UIApplication sharedApplication];
            if(adServerIsNil){
                [application openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/free-app*-daily/id492114303?mt=8"]];
                //             [application openURL:    [NSURL URLWithString:@"http://itunes.apple.com/us/app/free/id504465106?mt=8"]];
            }
            else 
                [application openURL:[NSURL URLWithString:@"http://ad4banner.shorturl.com"]];
            
		}}
	
	if (touchpt.x<40){
		if (touchpt.y<320){
            if(adServerIsNil) [[NSUserDefaults standardUserDefaults] setBool: YES forKey:@"userClickedPackagedAd"];

			UIApplication * application=[UIApplication sharedApplication];
            if(adServerIsNil){
                [application openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/free-app*-daily/id492114303?mt=8"]];
//             [application openURL:    [NSURL URLWithString:@"http://itunes.apple.com/us/app/free/id504465106?mt=8"]];
            }
            else 
                [application openURL:[NSURL URLWithString:@"http://ad4banner.shorturl.com"]];
		}}
        
        }
        else{
            
            if (touchpt.x<(40*2.133)){
                if (touchpt.y>(320*2.4)){
               
                    if(adServerIsNil) [[NSUserDefaults standardUserDefaults] setBool: YES forKey:@"userClickedPackagedAd"];
                    
                    UIApplication * application=[UIApplication sharedApplication];
                    if(adServerIsNil){
                        [application openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/free-app*-daily/id492114303?mt=8"]];
                        // [application openURL:    [NSURL URLWithString:@"http://itunes.apple.com/us/app/free/id504465106?mt=8"]];
                    }
                    else 
                        [application openURL:[NSURL URLWithString:@"http://ad4banner.shorturl.com"]];

                }}
            
            if (touchpt.x<(40*2.133)){
                if (touchpt.y<(320*2.4)){
                    NSLog(@"Yup");
                    if(adServerIsNil) [[NSUserDefaults standardUserDefaults] setBool: YES forKey:@"userClickedPackagedAd"];
                    
                    UIApplication * application=[UIApplication sharedApplication];
                    if(adServerIsNil){
                        [application openURL:[NSURL URLWithString:@"http://itunes.apple.com/us/app/free-app*-daily/id492114303?mt=8"]];
                        //  [application openURL:    [NSURL URLWithString:@"http://itunes.apple.com/us/app/free/id504465106?mt=8"]];
                    }
                    else 
                        [application openURL:[NSURL URLWithString:@"http://ad4banner.shorturl.com"]];

                }}
            
        }    
}

	if ((_firstTap==NO)&&(touchpt.x>300-50)&&(touchpt.x<300+50)&&(touchpt.y>460-50)&&(touchpt.y<460+50)){
		//[calib play];
		
		xx=_accelerometer[0];
		//	if(xx<-.707) xx=-.707-fabs(.707+_accelerometer[2]);
		yy=_accelerometer[1];
		zz=_accelerometer[2];	
		
		
	}
	if ((_firstTap==NO)&&(touchpt.x>0-150)&&(touchpt.x<0+50)&&(touchpt.y>0-50)&&(touchpt.y<0+50)){
		touchdown=0;
		//if ((_firstTap==NO)&&(_state!=kState_StandBy))  {
		//[laser play];
		laserstart.x=_position.x;
		laserstart.y=_position.y;//lasercounter=1555;
		
		aim=  3.14*0;//sharkdir*3.14/180+3.14/2;
		for (j=0;j<kClown-eaten;j++){
			for (i=0;i<200;i++){
				if ((_position.x+3*i* cos(aim)<clown[j].x+15)&&
					(_position.x+3*i* cos(aim)>clown[j].x-15)&&
					(_position.y+3*i* sin(aim)<clown[j].y+15)&&
					(_position.y+3*i* sin(aim)>clown[j].y-15)){
					
				clownSpeed[j]=-1;}}
		}
	}
	touchdown=5;
	//if (_state==kState_Running){
	if(aim!=0){
		//mainthrust

		touchdown=0;

	}	//}
	
	first=5;
	if ((_firstTap==YES)&&(touchpt.x>50-50)&&(touchpt.x<60+50)&&(touchpt.y>50-50)&&(touchpt.y<50+50)){first=35;}    // START BUTTON FROM TITLE SCREEN
	

	else if ((_firstTap==YES)&&(touchpt.x>160-150)&&(touchpt.x<160+150)&&(touchpt.y>90-90)&&(touchpt.y<90+90)){first=0;} 
	
	else if ((_firstTap==YES)&&(touchpt.x>160-150)&&(touchpt.x<160+150)&&(touchpt.y>390-90)&&(touchpt.y<390+90)){first=25;} 
	
	else if ((_firstTap==YES)&&(touchpt.x>160-150)&&(touchpt.x<160+150)&&(touchpt.y>240-60)&&(touchpt.y<240+60)){first=55;} 
	
	
	
	
	//first=5;
	if (touchpt.x==10){
		//touchpt.x-=1000;
	first=10;}/*
	 if (touchpt.x==0){
	 //touchpt.x=0; sound sharkvs   fishtype    @ schools of 5x??
	 first=0;}
	 if (touchpt.x==2){
	 //touchpt.x=0; sound sharkvs   fishtype    @ schools of 5x??
	 first=25;}
	 if (touchpt.x==3){
	 //touchpt.x=0; sound sharkvs   fishtype    @ schools of 5x??
	 first=35;}*/
	if ((lite==YES)&&(first==55)){
		//charc=1;
		
		//	[pick play];
		
		UIApplication * application=[UIApplication sharedApplication];
		[application openURL:
		 //		 [NSURL URLWithString:@"itms://www.itunes.com/apps/lasershark"]];
		 [NSURL URLWithString:@"http://itunes.apple.com/us/app/piano*/id464551137?mt=8"]];
		// http://phobos.apple.com/WebObjects/MZStore.woa/wa/viewSoftware?id=304515095&mt=8
	}
	
	
	if (first==25){
		charc=1;
		
		//	[pick play];
		
		//UIApplication * application=[UIApplication sharedApplication];
		//[application openURL:
		// [NSURL URLWithString:@"itms://www.itunes.com/apps/lasershark"]];
		
		
		/*[_textures[kTexture_Title] drawInRect:[glView bounds]];
		 glPushMatrix();
		 glTranslatef(150, 120, 1);
		 glRotatef(205, 0, 0, 1);
		 glScalef(.7, .7, 1);
		 //	[_textures[kTexture_sun] drawAtPoint:CGPointZero];
		 glScalef(1.5, 1.5, 1);
		 [_textures[kTexture_orca] drawAtPoint:CGPointZero];
		 glPopMatrix();
		 
		 glPushMatrix();
		 glTranslatef(150, 360, 1);
		 glRotatef(205, 0, 0, 1);
		 glScalef(.7, .7, 1);
		 [_textures[kTexture_sun] drawAtPoint:CGPointZero];
		 glScalef(1.5, 1.5, 1);
		 [_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
		 glPopMatrix();
		 */
		//	[_textures[kTexture_Title] drawInRect:[glView bounds]];
		
		
		
		/*glPushMatrix();
		 glTranslatef(27, 50, 1);
		 //glRotatef(205, 0, 0, 1);
		 glScalef(.23, .3, 1);
		 [_textures[kTexture_sun2] drawAtPoint:CGPointZero];
		 //glScalef(1.5, 1.5, 1);
		 //[_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
		 glPopMatrix();*/
		//[glView swapBuffers];
		
	}
	if (first==0){
		charc=0;
		//	[pick play];
		
		/*	[_textures[kTexture_Title] drawInRect:[glView bounds]];
		 glPushMatrix();
		 glTranslatef(150, 360, 1);
		 glRotatef(205, 0, 0, 1);
		 glScalef(.7, .7, 1);
		 //[_textures[kTexture_sun] drawAtPoint:CGPointZero];
		 glScalef(1.5, 1.5, 1);
		 [_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
		 glPopMatrix();
		 
		 glPushMatrix();
		 glTranslatef(150, 120, 1);
		 glRotatef(205, 0, 0, 1);
		 glScalef(.7, .7, 1);
		 [_textures[kTexture_sun] drawAtPoint:CGPointZero];
		 glScalef(1.5, 1.5, 1);
		 [_textures[kTexture_orca] drawAtPoint:CGPointZero];
		 glPopMatrix();
		 [glView swapBuffers];
		 */
	}
	
	
	if (first==35){
		//Stop rendering timer
		[_timer invalidate];
		_timer = nil;
		[UIApplication sharedApplication].idleTimerDisabled = NO;
		//[pick play];
		
		levelct=1;
		lives=2;  // swingfast
		xx=_accelerometer[0];
		//	if(xx<-.707) xx=-.707-fabs(.707+_accelerometer[2]);
		//		if (_accelerometer[2]>0){xx=-1-_accelerometer[2];}
		
		yy=_accelerometer[1]; // whalealpha
		zz=_accelerometer[2];
		
		// Replace the title screen with the background release score0
		//Load background texture and configure it default
		//if(levelct==1)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"water3.png"]];
		
		//	glBindTexture(GL_TEXTURE_2D, [_textures[kTexture_Background] name]);
		//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
		//	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
		//Reset
		_firstTap = NO;
		
		[self resetGame];
		//		_firstTap = NO;
		//[self resetGame]; invalidate  // char
	} 
	else if(first==210){//lazy
		//	[calib play];
		
		xx=_accelerometer[0];
		//	if(xx<-.707) xx=-.707-fabs(.707+_accelerometer[2]);
		yy=_accelerometer[1];
		zz=_accelerometer[2];	
		//levelct++;_fuel+=222;
		//lives--;
	}
	else if (_state==kState_Running){ // Either the user tapped to start a new game or the user successfully landed the rocket.
	
	}	
	else if((_state==kState_StandBy)&&(_firstTap==NO)){
		//[pick play];
		
		if (lives>-1){
		[self resetGame];}  // coralmute
		
		else if (lives<0){levelct=1;
			score0=0;lives=2;_firstTap=YES;
			charc=0;
			CGAffineTransform transform2 = CGAffineTransformMakeRotation(0);
	//		glView.transform = transform2;
			CGRect contentRect2;
            if(device==1) contentRect2 = CGRectMake(0, 0, 320, 480);
            if(device==0) contentRect2 = CGRectMake(0, 0, 768, 1024);
//            = CGRectMake(0, 0, 320, 480);
			glView.bounds = contentRect2;
			CGRect				bounds = [glView bounds];
			glDisable(GL_BLEND);
			//		[_textures[kTexture_Title] drawInRect:[glView bounds]];
			glEnable(GL_BLEND);
			//		[_textures[kTexture_Title] drawInRect:[glView bounds]];
			glPushMatrix();
			glTranslatef(150, 120, 1);
			glRotatef(205, 0, 0, 1);
			glScalef(.7, .7, 1);
			//	[_textures[kTexture_sun] drawAtPoint:CGPointZero];  good game
			glScalef(1.5, 1.5, 1);
		//	[_textures[kTexture_orca] drawAtPoint:CGPointZero];
			glPopMatrix();
			
			glPushMatrix();
			glTranslatef(150, 360, 1);
			glRotatef(205, 0, 0, 1);
			glScalef(.7, .7, 1);
			[_textures[kTexture_sun] drawAtPoint:CGPointZero];
			glScalef(1.5, 1.5, 1);
			[_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
			glPopMatrix();
			
			
			_timer = [NSTimer scheduledTimerWithTimeInterval:(1.0 / kRenderingFPS) target:self selector:@selector(title) userInfo:nil repeats:YES];
			[UIApplication sharedApplication].idleTimerDisabled = YES;
			
			
			//Swap the framebuffer
		[glView swapBuffers];}
	}
	
}

// Saves the user's score in the application preferences
- (void)saveScore {
	defaults = [NSUserDefaults standardUserDefaults];
	name = [defaults stringForKey:kUserNameDefaultKey];
	date = [NSDate date];
	myButton.hidden=YES;
	myButton2.hidden=YES;
	
	_statusTexture = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"SUCCESS!\n\n\nYou scored %i Points\n\nEnter your name:", _score] dimensions:CGSizeMake(256, 128) alignment:UITextAlignmentCenter fontName:kFontName fontSize:kStatusFontSize];
	
	//Show text field that allows the user to enter a name for the score
	[_textField setText:[[NSUserDefaults standardUserDefaults] stringForKey:kUserNameDefaultKey]];
	[window addSubview:_textField];
	//[_timer invalidate];
	//_timer = nil;
	//[UIApplication sharedApplication].idleTimerDisabled = NO;
	
	//Dismiss text field
	[_textField endEditing:YES];
	[_textField removeFromSuperview];
	
	//Make sure a player name exists, if only the default
	if(![name length])
		name = @"Player";
	
	//Update the high-scores in the preferences _thrust
	scores = [NSMutableArray arrayWithArray:[defaults objectForKey:kHighScoresDefaultKey]];
	[scores addObject:[NSDictionary dictionaryWithObjectsAndKeys:name, @"name", [NSNumber numberWithUnsignedInt:_score], @"score", date, @"date", nil]];
	[scores sortUsingDescriptors:[NSArray arrayWithObject:[[[NSSortDescriptor alloc] initWithKey:@"score" ascending:NO] autorelease]]];
	[defaults setObject:scores forKey:kHighScoresDefaultKey];
	
	// matrix
	//glPushMatrix(); dist
	
	/*
	 if (levelct=-1)
	 _textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"aq.png"]];
	 
	 else _textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"bg5.png"]];
	 
	 glDisable(GL_BLEND);
	 [_textures[kTexture_Background] drawInRect:bounds];  // lander
	 glEnable(GL_BLEND); outta
	 */
	CGRect				bounds = [glView bounds];
	
	CGAffineTransform transform = CGAffineTransformMakeRotation(3.14159/2);
	glView.transform = transform;
//	CGRect contentRect= CGRectMake(0, 0, 480, 320);
    
    CGRect contentRect;
    if(device==1) contentRect = CGRectMake(0, 0, 320, 480);
    if(device==0) contentRect = CGRectMake(0, 0, 768, 1024);
    
	glView.bounds = contentRect;
	//[_textures[kTexture_Background]release];
	//if (levelstate==-1){
	//_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"outta22.png"]];}// sharkhead
	//else{ _textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"wellbox2.png"]];}
	//if ((lite==YES)&&(levelct==6))_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"liteshark5.png"]];
	
	
	glDisable(GL_BLEND);
	//[_textures[kTexture_Background] drawInRect:bounds];
	glEnable(GL_BLEND);
	
	
	score0+=_fuel;
	//Display high-scores in status texture animation 
	if ((levelstate==-1)){   //OUTTA TIME
		if (lives==-1) {
			if (score0>0) string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\nscore: %i\n\ngame over",score0];
		else string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\ngame over"];}
		else {
			if (score0>0) string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\nscore: %i\n\nlevel %i",score0,levelct];
		else string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\nlevel %i",levelct];}
		
		//	else string = [NSMutableString stringWithFormat:@" "];//,eaten,kClown];
		
		//else string = [NSMutableString stringWithFormat:@"\n\nOUTTA TIME\n\n"];
		
		//else if (levelct==13) {string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\nscore: %i\n",score0,levelct];}
	}
	else if ((levelstate!=-1))string = [NSMutableString stringWithFormat:@"\n\n\n\n\n\nscore: %i\n---\nlevel %i",score0,levelct];
	
	for(m = 0; m < MIN([scores count], 10); ++m) {
		dictionary = [scores objectAtIndex:m];
		//[string appendFormat:@"\n%s%i. %@ (%@ Pts)", ([[dictionary objectForKey:@"date"] isEqualToDate:date] ? "> " : "   "), m + 1, [dictionary objectForKey:@"name"], [dictionary objectForKey:@"score"]/*, [[dictionary objectForKey:@"date"] descriptionWithCalendarFormat:@"%m/%d %I:%M %p" timeZone:nil locale:nil]*/];
	}
	[_statusTexture release];
	if ((lite==YES)&&(levelct==6)) {
		levelct=1;score0=0;lives=-1;
	_statusTexture = nil;}//[[Texture2D alloc] initWithString:string dimensions:CGSizeMake(256, 356) alignment:UITextAlignmentCenter fontName:kFontName fontSize:34];}//kScoreFontSize];
	else _statusTexture = [[Texture2D alloc] initWithString:string dimensions:CGSizeMake(256, 356) alignment:UITextAlignmentCenter fontName:kFontName fontSize:34];	
	
	_state = kState_StandBy;
	//CGAffineTransform transform2 = CGAffineTransformMakeRotation(0*3*3.14159/2);
	//glView.transform = transform2;
	//Render a frame
	//[self renderScene];
}

// Release the status texture and initialized values in preparation for starting a new game
- (void)resetGame {
	CGAffineTransform transform2 = CGAffineTransformMakeRotation(0);
	glView.transform = transform2;
//	CGRect contentRect2 = CGRectMake(0, 0, 320, 480);
    CGRect contentRect2;
    if(device==1) contentRect2 = CGRectMake(0, 0, 320, 480);
    if(device==0) contentRect2 = CGRectMake(0, 0, 768, 1024);
    
	glView.bounds = contentRect2;	
	//if(_state == kState_Running)
	myButton.hidden=YES;
	myButton2.hidden=YES;
	bubnum=11;zzz=-2444;
	for (i=0;i<bubnum;i++){
		bub[i].x=arc4random()%320;	
		bub[i].y=arc4random()%480;	
	}
	
	for (i=20;i<53;i++){
		bub[i].x=arc4random()%320;	
		bub[i].y=arc4random()%40+220;	
	}
	warning=NO;
	CGRect				bounds = [glView bounds];
	//if (levelct!=0){
	//[self saveScore]; touchdown
	_fuel=1200+100*levelct; pi=3.141592; 
	liveshh=lives;levelstate=1;touchdown=0;//lasercounter=0;
	kClown=0;//5+levelct/2;//12+5*levelct; touchdown  kclown eaten sharkdir eaten++
	eaten=0;wincounter=0;fuelcounter=0;spikecounter=0;swingfast=0;spanswing=1;
	rnd=arc4random()%6;
	rnd2=arc4random()%100;// levelct=5;         // take vardefs from savescore  --crashers
	_position.x = bounds.size.width / 2;
	_position.y = bounds.size.height/2 + _landerBounds.size.height;
	//	levelct=12;
	
    /*
	//levelct=7;
	if (levelct==1){updown=-1;leftright=0;spikenum=1;ssspike[0].x=160;ssspike[0].y=240;}
	else if (levelct==2){updown=0;leftright=1;spikenum=1;ssspike[0].x=60;ssspike[0].y=240;spikecounter=pi;}
	else if (levelct==3){updown=1;leftright=0;spikenum=1;ssspike[0].x=155;ssspike[0].y=240;}
	else if (levelct==4){updown=1;leftright=1;spikenum=1;ssspike[0].x=155;ssspike[0].y=240;spikecounter=pi;}
	else if (levelct==5){updown=-1;leftright=1;spikenum=1;swayseparate=1;swingfast=1;
	ssspike[0].x=45;ssspike[0].y=240;ssspike[1].x=285;ssspike[1].y=440;}
	else if (levelct==6){updown=0;leftright=1;spikenum=2;swayseparate=1;
	ssspike[0].x=55;ssspike[0].y=240;ssspike[1].x=55;ssspike[1].y=240;}
	//else if (levelct==6){updown=1;leftright=0;spikenum=2;swayseparate=1;
	//ssspike[0].x=155;ssspike[0].y=100;ssspike[1].x=155;ssspike[1].y=40;}
	
	else if (levelct==7){updown=1;leftright=1;spikenum=2;swayseparate=1;
	ssspike[0].x=155;ssspike[0].y=240;ssspike[1].x=155;ssspike[1].y=240;}
	
	else if (levelct==8){updown=-1;leftright=0;spikenum=2;swayseparate=1;
	ssspike[0].x=285;ssspike[0].y=120;ssspike[1].x=55;ssspike[1].y=360;}    //still either side
	//else if (levelct==9){updown=-1;leftright=0;spikenum=3;swayseparate=1;
	//	ssspike[0].x=45;ssspike[0].y=40;ssspike[1].x=285;ssspike[1].y=240;
	//ssspike[2].x=45;ssspike[2].y=440;}
	else if (levelct==9){updown=0;leftright=1;spikenum=3;swayseparate=0;
		ssspike[0].x=45;ssspike[0].y=40;ssspike[1].x=285;ssspike[1].y=240;
	ssspike[2].x=45;ssspike[2].y=440;}
	else if (levelct==10){updown=0;leftright=1;spikenum=2;swayseparate=1;swingfast=1;
		ssspike[0].x=45;ssspike[0].y=240;ssspike[2].x=285;ssspike[2].y=240;
	ssspike[1].x=45;ssspike[1].y=240;ssspike[3].x=285;ssspike[3].y=240;}
	else if (levelct==11){updown=1;leftright=0;spikenum=2;swayseparate=1;swingfast=1;
		ssspike[0].x=155;ssspike[0].y=440;_position.y=240;
	ssspike[1].x=155;ssspike[1].y=440;ssspike[1].x=155;ssspike[1].y=40;}	
	else if (levelct==12){updown=0;leftright=1;spikenum=2;swayseparate=1;swingfast=.35;
		ssspike[0].x=155;ssspike[0].y=240;_position.x=20;_position.x=240;
	ssspike[1].x=155;ssspike[1].y=240;}	
	else if (levelct==13){updown=1;leftright=1;spikenum=2;swayseparate=1;swingfast=0;
		ssspike[0].x=155;ssspike[0].y=240;_position.x=20;_position.x=240;
	ssspike[1].x=155;ssspike[1].y=240;}
	else if (levelct==14){updown=1;leftright=0;spikenum=3;swayseparate=1;swingfast=0;
		ssspike[0].x=155;ssspike[0].y=360;_position.x=20;_position.x=240;
		ssspike[1].x=155;ssspike[1].y=240;
	ssspike[2].x=155;ssspike[2].y=120;}
	
	else if (levelct==15){updown=0;leftright=1;spikenum=3;swayseparate=1;swingfast=0;
		ssspike[0].x=85;ssspike[0].y=240;_position.x=20;_position.x=240;
		ssspike[1].x=155;ssspike[1].y=240;
	ssspike[2].x=215;ssspike[2].y=240;}
	else if (levelct==16){updown=0;leftright=1;spikenum=3;swayseparate=1;swingfast=.5;
		ssspike[0].x=105;ssspike[0].y=240;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=155;ssspike[1].y=240;
	ssspike[2].x=195;ssspike[2].y=240;}
	else if (levelct==17){updown=1;leftright=1;spikenum=4;swayseparate=1;swingfast=.5;
		ssspike[0].x=105;ssspike[0].y=240;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=155;ssspike[1].y=240;ssspike[3].x=55;ssspike[3].y=240;
	ssspike[2].x=205;ssspike[2].y=240;}
	else if (levelct==18){updown=1;leftright=1;spikenum=4;swayseparate=1;swingfast=.5;
		ssspike[0].x=55;ssspike[0].y=240;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=105;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=240;
	ssspike[2].x=155;ssspike[2].y=240;}
	else if (levelct==19){updown=1;leftright=1;spikenum=2;swayseparate=1;swingfast=.5;
		ssspike[0].x=55;ssspike[0].y=240;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=105;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=240;
	ssspike[2].x=155;ssspike[2].y=240;}
	else if (levelct==20){updown=1;leftright=1;spikenum=3;swayseparate=1;swingfast=.5;
		ssspike[0].x=55;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=105;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=340;
	ssspike[2].x=155;ssspike[2].y=240;}
	else if (levelct==21){updown=1;leftright=0;spikenum=3;swayseparate=0;swingfast=1.5;
		ssspike[0].x=155;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.5;
		ssspike[1].x=155;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=340;
	ssspike[2].x=155;ssspike[2].y=340;}
	
	else if (levelct==22){
		updown=1;leftright=0;spikenum=4;swayseparate=1;swingfast=.30;	
		ssspike[2].x=155;ssspike[2].y=340;_position.x=20;_position.x=240;spanswing=.30;		ssspike[0].x=155;ssspike[0].y=140;ssspike[1].x=155;ssspike[1].y=140;
	ssspike[3].x=155;ssspike[3].y=340;}
	// bubnum
	else if (levelct==23){
		updown=1;leftright=0;spikenum=4;swayseparate=1;swingfast=.30;	
		ssspike[2].x=155;ssspike[2].y=340;_position.x=20;_position.x=240;spanswing=.30;		ssspike[0].x=155;ssspike[0].y=140;ssspike[1].x=155;ssspike[1].y=140;
	ssspike[3].x=155;ssspike[3].y=340;}	
	
	else if (levelct==24){
		updown=1;leftright=1;spikenum=4;swayseparate=1;swingfast=.25;	
		ssspike[2].x=155;ssspike[2].y=340;_position.x=20;_position.x=240;spanswing=.25;		ssspike[0].x=155;ssspike[0].y=140;ssspike[1].x=155;ssspike[1].y=140;
	ssspike[3].x=155;ssspike[3].y=340;}	
	
	else if (levelct==25){
		updown=0;leftright=1;spikenum=4;swayseparate=1;swingfast=.25;	
		ssspike[2].x=155;ssspike[2].y=340;_position.x=20;_position.x=240;spanswing=.25;
		ssspike[0].x=115;ssspike[0].y=240;ssspike[1].x=155;ssspike[1].y=140;
	ssspike[3].x=195;ssspike[3].y=240;}	
	
	else if (levelct==26){
		updown=0;leftright=1;spikenum=4;swayseparate=0;swingfast=.25;	
		ssspike[0].x=155;ssspike[0].y=340;_position.x=20;_position.x=240;spanswing=.25;
		ssspike[1].x=115;ssspike[1].y=240;ssspike[3].x=155;ssspike[3].y=140;
	ssspike[2].x=195;ssspike[2].y=240;}	
	
	else if (levelct==27){
		updown=0;leftright=1;spikenum=4;swayseparate=1;swingfast=.25;	
		ssspike[0].x=155;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.25;
		ssspike[1].x=195;ssspike[1].y=240;ssspike[3].x=155;ssspike[3].y=340;
	ssspike[2].x=115;ssspike[2].y=240;}	
	
	else if (levelct==28){updown=0;leftright=1;spikenum=3;swayseparate=0;swingfast=1.5;		ssspike[0].x=155;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.25;
		ssspike[1].x=155;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=340;
	ssspike[2].x=155;ssspike[2].y=340;}
	else if (levelct==29){updown=0;leftright=1;spikenum=3;swayseparate=1;swingfast=1.75;		ssspike[0].x=155;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.15;
		ssspike[1].x=155;ssspike[1].y=240;ssspike[3].x=205;ssspike[3].y=340;
	ssspike[2].x=155;ssspike[2].y=340;}
	
	
	else if (levelct==30){updown=0;leftright=1;spikenum=4;swayseparate=0;swingfast=1.5;		ssspike[0].x=115;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.25;ssspike[1].x=175;ssspike[1].y=140;ssspike[3].x=175;ssspike[3].y=340;
	ssspike[2].x=115;ssspike[2].y=340;}
	
	else if (levelct==31){updown=0;leftright=1;spikenum=4;swayseparate=1;swingfast=1.5;		ssspike[0].x=115;ssspike[0].y=140;_position.x=20;_position.x=240;spanswing=.25;ssspike[1].x=175;ssspike[1].y=140;ssspike[3].x=175;ssspike[3].y=340;
	ssspike[2].x=115;ssspike[2].y=340;}
	
	max3=levelct;if(levelct>2) max3=2;
	rnd= random() % 7;
	rnd2= random() % 7;
	
    
    */
	for (i=0;i<(kClown-eaten);i++){
		if (i%2==0) fishtype[i]=rnd;// 
		else fishtype[i]= rnd2;// random() % 7;                     //i % levelct;
		//if (max3==2){
		//	if (fishtype[i]%2==0) fishtype[i]=(i%max3)+rnd%7;
		//	else if (fishtype[i]%2==1) fishtype[i]=(i%max3)+rnd2%7;
		//}
		
		//if (fishtype[i]>5) fishtype[i]= random() % 6;//eaten redinv
		escape[i]=0;
		clown[i].x=random()%100+10+35*fishtype[i];    //_clownSpeed[i]*cos(_clownDir[i]);
		clown[i].y=random()%160+10+fishtype[i]*50;//_clownSpeed[i]*sin(_clownDir[i]);
		clownDir[i]=fmod(random(),28)+fishtype[i];///2;
		clownSpeed[i]=30+levelct*1;//(random()%15);//	stripe[i].x+=140+i*25;
		clownSpeed[i]=clownSpeed[i]/10+.85*fishtype[i];//	stripe[i].x+=140+i*25; aim
	}
	//[_textures[kTexture_Background]release];
	/*
	 if((levelct+rnd2)%5==1)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"water3.png"]];
	 if((levelct+rnd2)%5==2)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"coral2.png"]];
	 if((levelct+rnd2)%5==3)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"bg5.png"]];//clownspeed  score0
	 if((levelct+rnd2)%5==4)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"aq.png"]];//clownspeed
	 if((levelct+rnd2)%5==0)_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"water3.png"]];//clownspeed
	 */
	//_textures[kTexture_Background] = [[Texture2D alloc] initWithImage:[UIImage imageNamed:@"border85.png"]];
	
	//Destroy the status texture
	[_statusTexture release];
	_statusTexture = nil;
	
	//Reset the state to running mode
	_state = kState_Running;
	_lastTime = CFAbsoluteTimeGetCurrent();
	//_lastThrust = NO;
	
	//Randomize the landing base position
	_basePosition = RANDOM_FLOAT() * (bounds.size.width - kBaseSize) + kBaseSize / 2;
	
	//Set the initial state or the rocket
	_fuel = kInitialFuel;
	_rotation = 0.0;
	_rotationVelocity = 0.0;
	//_position.x = RANDOM_FLOAT() * (bounds.size.width - _landerBounds.size.width) + _landerBounds.size.width / 2;
	
	//_velocity.x = 0.0;
	//_velocity.y = -kInitialVelocity;
	
	//Render a frame immediately
	[self renderScene];
	
	//Start rendering timer
	_timer = [NSTimer scheduledTimerWithTimeInterval:(1.0 / kRenderingFPS) target:self selector:@selector(renderScene) userInfo:nil repeats:YES];
	[UIApplication sharedApplication].idleTimerDisabled = YES;
	
	//Play start sound
	//SoundEngine_StartEffect( _sounds[kSound_Start]);
}


// Renders one scene of the game
- (void)renderScene {
    
    
	CGRect				bounds = [glView bounds];
	//float				maxDistance = (kBaseSize - _landerBounds.size.width) / 2.0;
	BOOL				thrust = NO;
	CFTimeInterval		time;
	float				dTime;
    
	float				xoffset,ylimit,limit;
	//Update game state
	if(_state == kState_Running) {
		time = CFAbsoluteTimeGetCurrent();
		dTime =1;// time - _lastTime;
        //		adMobAd.hidden=NO; // timer
        
        
        
        
		////XX=XX/ZZ  XOFFSET=(ACC0/ACC/2)-XX?
		if (wincounter!=0) wincounter++;
		if (wincounter>10){
			rnd=random()%3;
			//if (rnd>4) [win play];
			//else if (rnd>3) [win2 play];
			//else 
			/*		if (rnd>1) [yea play];
			 else [clap play];
			 */		
			
			/*_position.x+=((clown[j].x)-_position.x)/2;
			 _position.y+=((clown[j].y)-_position.y)/2;
			 sharkdir=atan((clown[j].y-mouth.y)/(clown[j].x-mouth.x));
			 glPushMatrix(); fuel
			 glTranslatef(0,0,0);//_position.x, _position.y, 0);
			 glRotatef(sharkdir, 0, 0, 1);
			 [_textures[kTexture_Lander] drawAtPoint:CGPointZero];
			 glPopMatrix();	*/		   
			levelct++;
			// SoundEngine_Vibrate();
			[_timer invalidate];
            //		adMobAd.hidden=YES;
			_timer = nil;
			[UIApplication sharedApplication].idleTimerDisabled = NO;
			[self saveScore];
			
			// [self resetGame]; lander outta // outta
		}
		
		//Wrap the lander horizontal position
		if(_position.x < 80.0)
			_position.x = 80;//bounds.size.width + _position.x;
		else if(_position.x > 240)
			_position.x =240;// bounds.size.width-_landerBounds.size.width/2;// - _position.x;
		
		//Clamp the lander top vertical position
		if(_position.y > 400) {
			//_position.y = 1;//-bounds.size.height;// - _position.y;// _landerBounds.size.height / 2;
			_position.y = 400;//bounds.size.height - _landerBounds.size.height / 2;
			//_velocity.y = 0.0;
		}
		if(_position.y < 75) _position.y=75;
		
        
		
	}
	
	//Draw background
	//glDisable(GL_BLEND);
	//[_textures[kTexture_Background] drawInRect:bounds];
	//glEnable(GL_BLEND);
	
	//	swingfast=1;
	spikecounter+=.025+levelct*.001+swingfast*.025;
	
	//swayseparate=1;updown=1;leftright=1;   //  turn levelct => clownspeed down
	//levelct=12;
	
    /*
     for (i=0;i<spikenum;i++){
     
     if (updown==1)spike[i].x=ssspike[i].x+(111*spanswing*cosf(spikecounter+i*pi*swayseparate));
     else if (updown==0)spike[i].x=ssspike[i].x+-fabs(22*spanswing* cosf(spikecounter+i*pi*swayseparate));
     else if (updown==-1)spike[i].x=ssspike[i].x+-fabs(1*cosf(spikecounter+i*pi*swayseparate));
     
     if(leftright==1)spike[i].y=ssspike[i].y+200*spanswing*sinf(spikecounter+i*pi*swayseparate);
     else spike[i].y=ssspike[i].y+1*sinf(spikecounter+i*pi*swayseparate);
     
     
     glPushMatrix();
     //glTranslatef(spike[i].x+205+-fabs(0*cosf(spikecounter+i*pi/2*swayseparate)), spike[i].y, 1);
     //glTranslatef(1*spike[i].x+205+-fabs(11*cosf(spikecounter+i*pi/2*swayseparate)), spike[i].y, 1);
     if (leftright==1){ 
     glTranslatef(-160+spike[i].x+205, spike[i].y-sin(spikecounter+i*pi*swayseparate)*4, 1);
     glScalef(.43, .43, 1);
     glRotatef(-90+-sin(spikecounter+i*pi*swayseparate)*1.2, 0, 0, 1);		
     }
     else {
     glTranslatef(-600+spike[i].x+205+-fabs(0*cosf(spikecounter+i*pi*swayseparate)), spike[i].y, 1);	
     glScalef(.43, .43, 1);
     glRotatef(90, 0, 0, 1);		
     }
     
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glColor4f(1,1,1,(((fmod(random(),1))+25)/30)* .22+.9*sin(fabs(240-spike[i].y)/400));
     
     [_textures[kTexture_chain] drawAtPoint:CGPointZero];
     
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glColor4f(1,1,1,1);
     glPopMatrix();
     
     
     
     spike[i].x=210;
     glPushMatrix();
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     //	glColor4f(1,1,1,(((fmod(random(),1))+25)/30)* .22+.9*sin(fabs(240-spike[i].y)/400));
     // bubble
     glTranslatef(50, 240+-(240-spike[i].y)/3, 1);
     //glTranslatef(160, 240, 1);
     glScalef(.35+.4*sin(fabs(240-spike[i].y)/400), .35+.4*sin(fabs(240-spike[i].y)/400), 1);
     //glRotatef(-90+-25*sin((240-spike[i].y)/400), 0, 0, 1);
     glRotatef(-90+_accelerometer[1]*100, 0, 0, 1);
     //	[_textures[kTexture_spike] drawAtPoint:CGPointZero];
     xx+=0;//_accelerometer[1];
     if(xx<-100) xx=-100;
     if(xx>100) xx=100;
     //if(trunc(fmod(spike[i].y,50))==0) [bubblesamb play];
     
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glColor4f(1,1,1,1);
     glPopMatrix();  // mouth  eaten
     
     
     
     //Draw the game elements
     if(_state != kState_StandBy) {
     //Draw the landing base
     //[_textures[kTexture_Base] drawAtPoint:CGPointMake(_basePosition, kBaseOffset)];
     if (lasercounter!=0){
     
     lasercounter=lasercounter-1;
     //if(lasercounter<5)lasercounter=0;
     }
     
     if (lasercounter!=0){
     
     glPushMatrix();
     //glTranslatef(laserstart.x+cos(aim)*lasercounter,laserstart.y+sin(aim)*lasercounter, 1);	
     //glTranslatef(laserstart.x,laserstart.y, 1);	
     //	glTranslatef(laserstart.x+320*cos(aim), 320*sinf(aim)+ laserstart.y, 0);
     sharkdir=90;
     glTranslatef(_position.x+320*cos((sharkdir+90)*3.14/180), 320*sinf((sharkdir+90)*3.14/180)+ _position.y, 0);
     
     //glScalef(.63, .63, 1);
     //glRotatef(90, 0, 0, 1);		
     //if (touchdown==1)
     glRotatef(sharkdir-90-90, 0, 0, 1); 
     //glRotatef(-0, 0, 0, 1);
     //			glRotatef(aim*360/6.28-90, 0, 0, 1); 
     //		glScalef(.5, .7, 1);
     
     //glScalef(.1*lasercounter/222, .7, 1);
     [_textures[kTexture_MainThrust] drawAtPoint:CGPointMake(0,0)];
     
     //[_textures[kTexture_lasershot] drawAtPoint:CGPointZero];
     glPopMatrix(); //  bub
     aim=sharkdir*3.14/180+3.14/2;
     for (j=0;j<kClown-eaten;j++){
     for (i=0;i<200;i++){
     if ((_position.x+3*i* cos(aim)<clown[j].x+15)&&
     (_position.x+3*i* cos(aim)>clown[j].x-15)&&
     (_position.y+3*i* sin(aim)<clown[j].y+15)&&
     (_position.y+3*i* sin(aim)>clown[j].y-15)){
     
     clownSpeed[j]=-1;}}
     }
     //mainthrust
     
     }
     //	bubnum=14;
     
     glPushMatrix();
     glTranslatef(_position.x+320*cos(aim), 320*sinf(aim)+ _position.y, 0);
     glRotatef(aim*0+0, 0, 0, 1); 
     
     glScalef(.5, .7, 1);
     
     //	if (touchdown==1)[_textures[kTexture_MainThrust] drawAtPoint:CGPointMake(0,0)];
     
     if (touchdown>3){
     touchdown++;if (touchdown>11) touchdown=0;
     glScalef(1+(touchdown-10)/3, 1, 1);
     //glTranslatef(_position.x+120*cos(aim), 120*sinf(aim)+ _position.y, 0);
     
     //	[_textures[kTexture_MainThrust] drawAtPoint:CGPointMake(0,0)];
     }
     
     
     //commit animation
     //theView.transform = transform; 
     //[UIView commitAnimations];
     glPopMatrix();
     
     //Draw the lander
     glPushMatrix();
     glTranslatef(_position.x, _position.y, 0);
     
     
     h1=_accelerometer[1]-yy;//*100;///_accelerometer[0]); eaten
     h0=_accelerometer[0]-xx;//*100;///_accelerometer[0]); whaler fishtype
     
     
     //	if (zzz==1)	h0=_accelerometer[2]-zz;//*100;///_accelerometer[0]); whaler fishtype
     
     
     //	if (_accelerometer[2]>0)h0= (-(1+_accelerometer[0])+-(1+xx));
     
     //		if (_accelerometer[2]>0) h0=-1-((1+_accelerometer[0])+(1+xx));// sharkdir
     
     //if ((h1*h1+h0*h0)>.0007){  handletap
     if ((xoffset*xoffset+ylimit*ylimit)>.001){
     
     //sharkdir=atan(h1/h0)*180/pi;
     sharkdir=atan(ylimit/xoffset)*180/pi;
     
     sharkdir-=90;//45;
     if (xoffset<0) sharkdir+=180;
     //	if (h0<0) sharkdir+=180;
     
     }
     
     //if (touchdown==1) {glRotatef(aim*360/6.28-90,0,0,1);}
     //		else
     sharkdir=0;
     glRotatef(sharkdir-90, 0, 0, 1);
     glScalef(.3, .3, 1);
     
     //glScalef(.7, .7, 1); //mouth
     if (sharkdir<0) sharkdir+=360;
     if (sharkdir>360) sharkdir-=360;
     if(fuelcounter>0) {
     glScalef(1+-(sin(((54-fuelcounter)/54)*1.6+1.5))/8, 1+-(sin(((54-fuelcounter)/54)*1.6+1.5))/8, 1);
     //scaleshark+=.25;
     //if( scaleshark>3.12) scaleshark=0;
     }
     else if( scaleshark!=0) {
     glScalef(1+(sin(scaleshark))/4, 1+(sin(scaleshark))/4, 1);
     scaleshark+=.25;
     if( scaleshark>3.12) scaleshark=0;
     }
     movecounter+=4;if (movecounter>10) movecounter=-8;
     anime=0;//fabs(round(movecounter/5)); //(anime+1)%2;
     
     //charc=0;
     
     if(charc==1){
     if(fuelcounter<1){  
     if (touchdown!=1){
     if ((sharkdir<270)&&(sharkdir>100)){
     [_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];}
     else {
     if (anime==0)[_textures[kTexture_Shark] drawAtPoint:CGPointZero];
     else if (anime==1)[_textures[kTexture_Shark2] drawAtPoint:CGPointZero];
     else if (anime==2)[_textures[kTexture_Shark3] drawAtPoint:CGPointZero];
     //		else if (anime==3)[_textures[kTexture_Shark2] drawAtPoint:CGPointZero];
     }}
     
     else if(touchdown==1){
     if ((aim>0)&&(aim<3.14)){
     [_textures[kTexture_Shark] drawAtPoint:CGPointZero];}
     else [_textures[kTexture_Sharkinv] drawAtPoint:CGPointZero];
     }
     }
     else  // alpha levels
     {if ((sharkdir<270)&&(sharkdir>100)) [_textures[kTexture_Lander] drawAtPoint:CGPointZero];
     else[_textures[kTexture_Landerinv] drawAtPoint:CGPointZero];}
     }
     
     
     else{
     if(fuelcounter<1){  
     if (touchdown!=1){
     if ((sharkdir<270)&&(sharkdir>100)){
     [_textures[kTexture_orca] drawAtPoint:CGPointZero];}
     else {
     if (anime==0)[_textures[kTexture_orcainv] drawAtPoint:CGPointZero];
     else if (anime==1)[_textures[kTexture_Shark2] drawAtPoint:CGPointZero];
     else if (anime==2)[_textures[kTexture_Shark3] drawAtPoint:CGPointZero];
     //		else if (anime==3)[_textures[kTexture_Shark2] drawAtPoint:CGPointZero];
     }}
     
     else if(touchdown==1){
     if ((aim>0)&&(aim<3.14)){
     [_textures[kTexture_orcainv] drawAtPoint:CGPointZero];}
     else [_textures[kTexture_orca] drawAtPoint:CGPointZero];
     }
     }
     else  // alpha levels
     {if ((sharkdir<270)&&(sharkdir>100)) [_textures[kTexture_orcaopac] drawAtPoint:CGPointZero];
     else[_textures[kTexture_orcaopacinv] drawAtPoint:CGPointZero];}
     }
     
     
     hh2=0;
     //counter++;
     
     //if (counter>3.14*100) counter=0;
     for (i=0;i<(kClown-eaten);i++){
     if(fmod(clownDir[i],3.14/2)>.8) clownDir[i]-=.051*(fmod(i,10)/10);
     else clownDir[i]+=.051*(fmod(i,10)/10);
     //clownDir[i]=clownDir[i]+((avg-clownDir[i])/120+counter/100);
     if (clownDir[i]>6.283) clownDir[i]-=6.283;
     if (clownDir[i]<0) clownDir[i]+=6.283;
     dist=sqrt((mouth.x-clown[i].x)*(mouth.x-clown[i].x)+(mouth.y-clown[i].y)*(mouth.y-clown[i].y));
     
     if ((clownSpeed[i]>0)){//&&(clownSpeed<10)){
     clown[i].x+=.8*clownSpeed[i]*cos(clownDir[i]);
     if (clown[i].x>310){
     clown[i].x=310;
     escape[i]=0;
     clownDir[i]=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) clownDir[i]+=3.14;
     if (clownDir[i]>0) 
     {clownDir[i]+=1.2;}
     else{
     clownDir[i]-=1.2;}// fmod(random(), 6.28);
     clownSpeed[i]=4.4+fmod(random(),.3)+1*.3+levelct/2;}
     
     
     if (clown[i].x<10) {
     clown[i].x=10;
     escape[i]=0;
     clownDir[i]=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) clownDir[i]+=3.14;
     if (clownDir[i]<3.14) 
     {clownDir[i]-=1.6;}
     else{
     clownDir[i]+=1.6;}// fmod(random(), 6.28);
     clownSpeed[i]=4.4+levelct/10+fmod(random(),.3)+fishtype[i]*.3;
     }
     clown[i].y+=.8*clownSpeed[i]*sin(clownDir[i]);
     if (clown[i].y>470){
     clown[i].y=470;
     //escape[i]=0;
     clownDir[i]=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) clownDir[i]+=3.14;
     if (clownDir[i]<1.57) 
     {clownDir[i]-=1.113;} //touchdown mouth
     else{
     clownDir[i]+=1.3;}// fmod(random(), 6.28); title
     clownSpeed[i]=4.4+levelct/10+fmod(random(),.3)+fishtype[i]*.3;
     if ((clown[i].x==10)||(clown[i].x==310)||(dist>220))clownDir[i]=fmod(random(), 6.28);
     
     if (((clown[i].x==10)||(clown[i].x==310))&&(dist<220)){
     //	clown[i].x=
     //clownDir[i]=3.13*6/4+ fmod(random(),.2);//3.1+1.4*(random()%3)+fmod(random(),.4);
     ragh=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) ragh+=3.14;//reset
     if(clown[i].x==10){
     if (ragh<(9.5/4))clownDir[i]=6.15;//(3/2*M_PI)+.05;
     if (ragh>(9.5/4))clownDir[i]=4.75;}//(3/2*M_PI)+.05;
     if(clown[i].x==310){
     if (ragh<(M_PI/4))clownDir[i]=4.7;//(3/2*M_PI)-.05;
     if (ragh>(M_PI/4))clownDir[i]=3.2;}//(3/2*M_PI)-.05;
     
     clownSpeed[i]=18+ levelct*.15;
     escape[i]=1;
     }
     
     //if ((clown[i].x==10)||(clown[i].x==310))clownDir[i]=3.1+1.4*(random()%3)+fmod(random(),.4);   // levelct dist
     
     }
     
     
     if (clown[i].y<10){
     clown[i].y=10;
     escape[i]=0;
     clownDir[i]=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) clownDir[i]+=3.14;
     
     if (clownDir[i]<0) clownDir[i]+=6.280;
     if (clownDir[i]<4.7) 
     {clownDir[i]-=1.6;}
     else{
     clownDir[i]+=1.6;}// fmod(random(), 6.28);
     clownSpeed[i]=4.4+levelct/10+fmod(random(),.3)+fishtype[i]*.3;
     if ((clown[i].x==10)||(clown[i].x==310)||(dist>200))clownDir[i]=fmod(random(),6.28);
     if (((clown[i].x==10)||(clown[i].x==310))&&(dist<220)){
     //	clown[i].x=  mouth
     //clownDir[i]=3.13*6/4+ fmod(random(),.2);//3.1+1.4*(random()%3)+fmod(random(),.4);
     ragh=atan((clown[i].y-_position.y)/(clown[i].x-_position.x));
     if ((clown[i].x-_position.x)<0) ragh+=3.14;
     if(clown[i].x==10){
     if (ragh<(15.7/4))clownDir[i]=1.55;//6.15;//(3/2*M_PI)+.05;
     if (ragh>(15.7/4))clownDir[i]=.05;}//(3/2*M_PI)+.05;
     if(clown[i].x==310){
     if (ragh<(7*3.14/4))clownDir[i]=1.6;//(3/2*M_PI)-.05;
     if (ragh>(7*3.14/4))clownDir[i]=3.1;}//(3/2*M_PI)-.05;
     
     clownSpeed[i]=18+ levelct*.15;
     escape[i]=1;
     }
     //if ((clown[i].x==10)||(clown[i].x==310))clownDir[i]=-.05+1.45*(random()%3)+fmod(random(),.3);//fmod(random(),6.28);
     }
     //	clownSpeed[i]=6.02+fmod(random(),.3)+fishtype[i]*2.3;  level
     
     }
     else{
     clown[i].x+=.37;
     if (clown[i].x>315) clown[i].x=315;}
     //hh2+=clownDir[i];
     //if (i==(kClown-1)) avg=hh2/kClown; fuel
     //	stripe[i].x+=140+i*25;
     //stripe[i].y+=140+i*25;
     //clown[i].x=i*10;
     //clown[i].y=i*10;   sound
     if (clownSpeed[i]<10){	
     
     clownDir[i]=fmod(clownDir[i], 6.28);
     if (clownDir[i]<0) clownDir[i]+=6.28;
     if (i==1){	
     hh2=atan((clown[i].y-mouth.y)/(clown[i].x-mouth.x));
     if ((mouth.x-clown[i].x)>0) hh2+=3.14;
     hh3=hh2-clownDir[i];
     if (fabs(hh3)<3.14) {
     clownDir[i]+=(hh2-clownDir[i])/(10+7*(9-fishtype[i]));}
     else{
     if (hh2>clownDir[i]){
     hh2-=6.28;
     clownDir[i]-=(clownDir[i]-hh2)/(50+37*(9-fishtype[i]));
     }
     else{
     clownDir[i]-=6.28;
     clownDir[i]+=(hh2-clownDir[i])/(50+37*(9-fishtype[i]));
     }	
     }
     }
     else if(i!=0){
     
     hh2=atan((clown[i].y-clown[0].y)/(clown[i].x-clown[0].x));
     if ((clown[0].x-clown[i].x)>0) hh2+=3.14;
     hh2+=3.1415;
     hh3=hh2-clownDir[i];
     if (fabs(hh3)<3.14) {
     clownDir[i]+=(hh2-clownDir[i])/(10+7*(9-8));}
     //			clownDir[i]+=(hh2-clownDir[i])/(10+7*(9-fishtype[i]));}
     // clownSpeed
     else{
     if (hh2>clownDir[i]){
     hh2-=6.28;
     clownDir[i]-=(clownDir[i]-hh2)/(50+37*(9-8));
     //						clownDir[i]-=(clownDir[i]-hh2)/(50+37*(9-fishtype[i]));
     
     }
     else{
     clownDir[i]-=6.28;
     clownDir[i]+=(hh2-clownDir[i])/(50+37*(9-8));
     //						clownDir[i]+=(hh2-clownDir[i])/(50+37*(9-fishtype[i]));
     
     }	
     }
     
     }
     
     
     }
     }
     glPopMatrix();
     
     if(fuelcounter<1){
     if( ((spike[i].x)<(mouth.x+30))  && 
     ((spike[i].x)>(mouth.x-30))&& 
     ((spike[i].y)<(mouth.y+30))  && 
     ((spike[i].y)>(mouth.y-30))  )
     {		
     _fuel-=33; 
     fuelcounter=55;
     //	[stung play];
     }
     }
     else fuelcounter--;
     }
     glPushMatrix();
     
     glTranslatef(50, 240, 1);
     glRotatef(-90, 0, 0, 1);
     glScalef(.43, .43, 1);
     [_textures[kTexture_Stripe] drawAtPoint:CGPointMake(0,0)];
     
     
     glPopMatrix();
     // clowndir
     for (i=0;i<(kClown-eaten);i++){
     
     glPushMatrix();
     
     glTranslatef(clown[i].x, clown[i].y, 0);
     if (clownSpeed[i]>0){
     glRotatef(clownDir[i]*(180/3.14)-90, 0, 0, 1);
     glScalef(.3, .3, 1);
     //if ((i%5)==1)[_textures[kTexture_Clown] drawAtPoint:CGPointMake(0,0)];
     //if ((i%5)==2)  fmod lander  touchdown
     if(clownDir[i]<0) clownDir[i]+=3.14159*2;
     if(clownDir[i]>3.14159*2) clownDir[i]-=3.14159*2;
     
     if (fmod(clownDir[i],6.28)<3.14){
     //if (((fmod(clownDir[i],6.28))>0)&&((fmod(clownDir[i],6.28))<3.14)){
     //	fishtype[i]=0;fishtype[1]=1;
     if (fishtype[i]==0){
     [_textures[kTexture_Stripe] drawAtPoint:CGPointMake(0,0)];}
     else if (fishtype[i]==1){
     [_textures[kTexture_Clown] drawAtPoint:CGPointMake(0,0)];}
     else if (fishtype[i]==2){
     [_textures[kTexture_Green] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==3){
     [_textures[kTexture_Red] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==4){
     [_textures[kTexture_Yellow] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==5){
     [_textures[kTexture_Blue] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==6){
     [_textures[kTexture_indigo] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==7){
     [_textures[kTexture_grey] drawAtPoint:CGPointMake(0,0)];
     
     }
     }   ///  accelerometer levelct
     else{
     if (fishtype[i]==0){
     [_textures[kTexture_Stripeinv] drawAtPoint:CGPointMake(0,0)];}
     else if (fishtype[i]==1){
     [_textures[kTexture_Clowninv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==2){
     [_textures[kTexture_Greeninv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==3){
     [_textures[kTexture_Redinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==4){
     [_textures[kTexture_Yellowinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==5){
     [_textures[kTexture_Blueinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==6){
     [_textures[kTexture_indigoinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==7){
     [_textures[kTexture_greyinv] drawAtPoint:CGPointMake(0,0)];
     }
     
     }
     }
     else{
     glRotatef(1.6*(180/3.14)-90, 0, 0, 1);
     if (fishtype[i]==0){
     [_textures[kTexture_Stripeinv] drawAtPoint:CGPointMake(0,0)];}
     else if (fishtype[i]==1){
     [_textures[kTexture_Clowninv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==2){
     [_textures[kTexture_Greeninv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==3){
     [_textures[kTexture_Redinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==4){
     [_textures[kTexture_Yellowinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==5){
     [_textures[kTexture_Blueinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==6){
     [_textures[kTexture_indigoinv] drawAtPoint:CGPointMake(0,0)];
     }
     else if (fishtype[i]==7){
     [_textures[kTexture_greyinv] drawAtPoint:CGPointMake(0,0)];
     }
     
     }
     glPopMatrix();
     }
     
     
     //counter=random()%1000;
     //zzz-=33;
     leftright=1;
     bub[31].x=290;
     bub[31].y=240;
     
     for (i=30;i<32;i++){ //eaten++  fmod
     glPushMatrix();
     
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glColor4f(1,1,1,(((fmod(random(),1))+25)/30)* .22);
     
     glTranslatef(bub[i].x+170, bub[i].y+-sin((counter+i*50)/30+i*0)*145, 1);
     glRotatef((sin((counter+i*50)/30+i*0))  *25+ 0, 0, 0, 1);		
     glScalef(47.5, 47+0/100, 1);
     //[_textures[kTexture_sun] drawAtPoint:CGPointZero];
     //	[_textures[kTexture_Background] drawAtPoint:CGPointZero];
     
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glColor4f(1,1,1,1);
     //glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glPopMatrix();
     //bub[i].x+=3.5;if(bub[i].x>320){bub[i].x=0;bub[i].y=random()%480;}
     //bub[i].y+=.5*sin(bub[i].x/30);//if(bub[i].x>320)bub[i].x=0;
     
     
     }
     zzz+=13;if(zzz>2700)zzz=-2444;
     cc++;
     glPushMatrix();
     glTranslatef(90, zzz, 1);
     glScalef(2, 2, 1);
     glRotatef(-90+0*sin(cc/30), 0, 0, 1);
     [_textures[kTexture_no] drawAtPoint:CGPointZero];
     glPopMatrix(); 
     
     if((_fuel > 0)&&(wincounter==0)){
     //** Draw the textures ([texture drawAtPoint/drawInRect], etc.)
     //glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     //glColor4f(1.0,1.0,1.0,0.05); // This line sets the alpha for the group to 0.5
     //glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     if (_accelerometer[2]>0){
     
     //	if (faceup==NO){
     glPushMatrix();
     glTranslatef(shortSide*.5, longSide*.5, 1);glRotatef(-90, 0, 0, 1);
     [_textures[kTexture_no] drawAtPoint:CGPointZero];
     glPopMatrix();}
     
     glPushMatrix();
     
     glTranslatef(300, 460, 1);glRotatef(-90, 0, 0, 1);
     glScalef(.15, .15, 1);
     [_textures[kTexture_twist] drawAtPoint:CGPointZero];
     glPopMatrix();
     
     glPushMatrix();
     
     glTranslatef(20, 20, 1);glRotatef(-90, 0, 0, 1);
     glScalef(.25, .25, 1);
     [_textures[kTexture_redcirc] drawAtPoint:CGPointZero];
     glPopMatrix();
     }
     
     
     
     //Draw the explosion if the lander is crashed 
     if(_state == kState_Failure)
     [_textures[kTexture_Explosion] drawAtPoint:CGPointMake(_position.x, _position.y)];
     
     //Draw the fuel bar
     if(_state == kState_Running) {
     //	size = [_textures[kTexture_FuelBar] contentSize];
     //[_textures[kTexture_FuelBar] drawAtPoint:CGPointMake(kFuelBarX, kFuelBarY)];
     if (wincounter==0)_fuel-=.95;
     //	if ((warning==NO)&&((_fuel)<299)) {warning=YES;[laser play]; [timelow play];}
     
     if ((_fuel<0)){
     //	[lose play];
     [_timer invalidate];
     //		adMobAd.hidden=YES;
     _timer = nil;
     [UIApplication sharedApplication].idleTimerDisabled = NO;						levelstate=-1;liveshh=0;lives--;
     [self saveScore];}
     
     //	size.height=425;
     
     //	if(levelct==1){
     glPushMatrix();
     glRotatef(-90, 0, 0, 1);
     glScalef(.328, .328, 1);
     //glt
     //lives=5;
     for (i=0;i<liveshh;i++){
     if (charc==1)//[_textures[kTexture_life] drawAtPoint:CGPointMake(-40-70*i,44)];
     {[_textures[kTexture_life] drawAtPoint:CGPointMake(-40-70*i,934)];}
     
     else[_textures[kTexture_life2] drawAtPoint:CGPointMake(-40-70*i,934)];
     
     //[_textures[kTexture_life] drawAtPoint:CGPointMake(-40-70*i,750)];//312, 15+14*i)];
     }
     glPopMatrix();//}
     
     //if(_fuel > 0)
     //	[_textures[kTexture_FuelLevel] drawInRect:CGRectMake(kFuelBarX - size.width / 2 + 1, (kFuelBarY - size.height / 2 + 18)+((size.height)-(_fuel / kInitialFuel * (size.height + 2)))/2, size.width - 2, _fuel / kInitialFuel * (size.height))];
     //		[_textures[kTexture_FuelLevel] drawInRect:CGRectMake(kFuelBarX - size.width / 2 + 1, (kFuelBarY - size.height / 2 + 1)+((size.height)-(_fuel / kInitialFuel * (size.height - 2)))/2, size.width - 2, _fuel / kInitialFuel * (size.height - 2))];
     
     }
     }
     */
	//Draw the overlay status texture
	if(_statusTexture) {
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
        //		[_statusTexture drawAtPoint:CGPointMake(bounds.size.width / 2, bounds.size.height * 2 / 3+10)];
		//[_statusTexture drawAtPoint:CGPointMake(240,240)];
		
		glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
	}
	lasercounter-=1;
    
	
	lasercounter--;
	if (lasercounter>100){
		glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
		glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
        glColor4f(1,1,1,.25);}
	
    
    
    //    device=0;
    //   NSLog(@"device %i",device);
    /*
     if (fade==0){
     glPushMatrix();
     
     if (device==1) glScalef(.475, .475, 1);
     
     [_textures[kTexture_Title] drawAtPoint:CGPointZero];
     glPopMatrix();
     }  // fuel
     else{
     glPushMatrix();
     //		glTranslatef(shortSide/2, longSide/2, 1);
     if (device==1)
     glScalef(.475, .475, 1);
     
     //		[_textures[kTexture_Background] drawAtPoint:CGPointMake(shortSide*.5, longSide*.5)];
     //		[_textures[kTexture_Background] drawAtPoint:CGPointZero];
     glPopMatrix();
     
     }
     */
    
    //    glDisable(GL_BLEND);
    //	[_textures[kTexture_Title] drawInRect:[glView bounds]];
    //    [_textures[kTexture_Title] drawAtPoint:CGPointZero];
    
    // WHERE REAL DRAW
    
    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
	glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
	glColor4f(1,1,1,.005);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    // [_textures[kTexture_Background] drawAtPoint:CGPointMake(shortSide*.5, longSide*.5)];
    
	glEnable(GL_BLEND);
	
	
	glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
	glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
	glColor4f(1,1,1,1);
	
    
    
    
    
    
    
    glPushMatrix();
	glTranslatef(shortSide*.5, longSide*.5, 0);  //05  lines
    /*
     glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
     glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
     glTexEnvf(GL_TEXTURE_ENV,GL_TEXTURE_ENV_MODE,GL_MODULATE );		
     */
    
    // WHERE REAL DRAW
    glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
	glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    
    //	glColor4f(1,1,1,.15);
	glColor4f(1,1,1,1);
    glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
    [_textures[kTexture_Background] drawAtPoint:CGPointMake(0,0)];
    
    glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
    glPopMatrix();
	
    
    //    [window bringSubviewToFront: adView];
//    [window sendSubviewToBack:adView];
    
    //    [adView ];
    
    //    [glView swapBuffers];
    
    
    
    //FOR THE PARTICLES ***************************
    
    
    for (i=0;i<bubnum;i++){ //eaten++
		for (j=0;j<1;j++){ //eaten++  
			
			glPushMatrix();
			
			glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);
			glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
			
			//float redDelta = 
			
            //	jugnum=3;
            
			sizePart=.29;
			if (vis==YES){
                sprites=7;
                sizePart=2;
				spread=55;
				sizePart=1.2-bubLife[i]/35;
                
				counter+=.02;  // colorDelta	
                colorDelta = .003;//.014;
                red= .12+.5*fabs( sin(counter/65+i*colorDelta))
				+fmod(trunc(i/sprites)/2,.6);//) .09;
                blue=.2+.5*fabs( sin(counter/85+i*colorDelta))
				+fmod((trunc(i/sprites)/2),.5);//.07;
                green=.2+.5*fabs(sin(counter/111+i*colorDelta))+
				fmod( trunc(i/sprites)/2,.7);//.97;
				
                dance=0;
                spinCo=0*.1+dance*.1*sin(counter/52); // +/-
				//bubDir[i]+=sin(i)/spinCo;   //diffDir bool
				//bubDir[i]+=-spinCo;
				bubDir[i]+=spinCo;
				
				if ((bubDir[i]<(2*pi/2-.005))||(bubDir[i]>(2*pi/2+.005))){
					hh2= atan((bubSpeed[i]* sinf(bubDir[i])-0)/(bubSpeed[i]* cosf(bubDir[i])-.02));
					//if ((clownDir[i]<(pi/2+.05))&&(clownDir[i]>(pi/2-.05))&&(clownSpeed[i]<1.92)){
				}
				
				//	if (sinf(juggleDir)<0) juggleDir=-hh2;
				//	else juggleDir=hh2;
				if ((bubSpeed[i]* cosf(bubDir[i])-.02)<0) {bubDir[i]=hh2+3.14;}
				else {bubDir[i]=hh2+0*3.14;}
				
				bubSpeed[i]=bubSpeed[i]+-.1*cosf(bubDir[i]);
			}
			
			else{
				sprites=3;
				sizePart=.7-device*.4;
                spread=55;
				counter+=.05;  // colorDelta
                colorDelta = .08;//.014;
                red= .42+fabs( sin(counter/75+i*colorDelta));//) .09;
                blue=0;//.42+fabs( sin(counter/165+i*colorDelta));//.07;
                green=.42+fabs(sin(counter/44+i*colorDelta));//.97;
				
				dance=1;
				spinCo=.1+dance*.15*sin(counter/32); // +/-
				//bubDir[i]+=sin(i)/spinCo;   //diffDir bool
				//bubDir[i]+=-spinCo;
				bubDir[i]+=spinCo;
			}
			
			glColor4f(red,green,blue,bubLife[i]/40- 0*sin(bubDir[i]));//(startTouch.x-bub[i].x)/133);//fmodf(1, random()));
			//glColor4f(1,1,0,1);  //yellow
			//    glColor4f(1,0,0,1);  //red
			//	glColor4f(0,1,0,1);  //green
			//glColor4f(0,0,1,1);  //blue
			
			
			bubLife[i]-=0.3;
			if (bubnum>50) bubnum=10;
			
			if(device==1) glTranslatef(bub[i].x,bub[i].y, 1);
			else  glTranslatef(bub[i].x *2.133,bub[i].y*2.4, 1);
			
			//	glTranslatef(bub[i].x+j*2*bubSpeed[i]* cos(bubDir[i]),bub[i].y+ j*2*bubSpeed[i]* sin(bubDir[i]), 1);
			glRotatef(-90+bubDir[i]*180/(3.14), 0, 0, 1);	
			
            sizeDiff=1;//.4*j+.94;
            //sizePart=.5+(startTouch.x-bub[i].x)/333,
            pulse=42;
			pulseDiff=1;
			//	glScalef(.25, .25, 1);
			
			//glScalef(sizePart*(sin(i)+sizeDiff*sin(counter/pulse+i*pulseDiff)),sizePart*(sin(i)+sizeDiff*sin(counter/pulse+i*pulseDiff)), 1);
			
			size=sizePart;//+ fabs( sizePart*(sin(i)+sizeDiff*sin(counter/pulse+i*pulseDiff))*sin(counter/pulse+i*pulseDiff)*sin(counter/pulse+i*pulseDiff)*sin(counter/pulse+i*pulseDiff));
            
			if (device==1)
                glScalef(size,size, 1);
			else
            {
                //                if (!vis) glScalef(size*1.2,size*1.2, 1);
            }
            
            //            NSLog(@"Fierd");
			
			//	glTranslatef(55, 55, 1);
			if (vis==YES)[_textures[kTexture_lasershot] drawAtPoint:CGPointZero];
			else if (vis==NO)[_textures[kTexture_lasershot] drawAtPoint:CGPointZero];
			//	glTranslatef(0, 155, 1);
			
			//[_textures[kTexture_bubbly] drawAtPoint:CGPointZero];
			
			
			glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,1);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
			
			glPopMatrix();
		}
		
		//	bub[i].x+=3.5;if(bub[i].x>320){bub[i].x=0;}//bub[i].y=random()%480;}
		//		bub[i].y+=3*sin(bub[i].x/30);   //if(bub[i].x>320)bub[i].x=0;
		//bub[i].y+=5*sin(bub[i].x/30);			
		
		//bubSpeed[i]+=.75*sin(counter/17);  //stutter
		//bubSpeed[i]+=1.5*sin(counter/17);  //stutter
		//bubSpeed[i]+=1.5*sin(counter/147);  //whirlaway
		bub[i].x=bub[i].x+.7*bubSpeed[i]* cos(bubDir[i]);	
		bub[i].y=bub[i].y+.7*bubSpeed[i]* sin(bubDir[i]);
		float whereDir;
		
		//	whereDir= atan((startTouch.y-bub[i].y)/(startTouch.x-bub[i].x))+1.6;
		//	if ((startTouch.x-bub[i].x)>0) whereDir+=3.1416;
		
		//	bub[i].x=bub[i].x+1.5*bubSpeed[i]* cos(whereDir) *sin(counter/52);	
		//	bub[i].y=bub[i].y+1.95*bubSpeed[i]* sin(whereDir) *(sin(counter/52)-.63);	
		
	}
    
    //FOR THE JUGGLING ***************************
	//jugglegame=YES;
	
	
	if((jugglegame==YES)){ //&&(juggling==YES) lite
        
        //     jugnum=5;
        for (i=0;i<jugnum;i++){
            
            if(paused==NO){
                
                
                juggle[i].x+=juggleSpeed[i]*cos(juggleDir[i]);
                juggle[i].y+=juggleSpeed[i]*sin(juggleDir[i]);
                
                //            juggle[i].x+=juggleSpeed[i]*cos(juggleDir[i])*(1.5-.5*device);
                //          juggle[i].y+=juggleSpeed[i]*sin(juggleDir[i])*(1.5-.5*device);
                
                if( juggle[i].x<0) {
                    for(j=0;j<5;j++){juggle[j].x=-100;}
                    juggling=NO;
                    if (juggleCount>juggleHi) juggleHi=juggleCount;
                    
                    if (juggleCount>0){
                        //[sound7 play];
                        
                        [_textures[kTexture_LabelSpeed] release];
                        if(device==0)  
                            _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Best: %i",juggleHi] dimensions:CGSizeMake(164*2.133, 132*2.133) alignment:UITextAlignmentLeft fontName:kFontName fontSize:32];
                        if(device==1)  
                            _textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Best: %i",juggleHi] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];}
                    
                    
                    if (juggleCount>2) [sound7 play];
                    juggleCount=0;
                    
                    
                }
                
                if( juggle[i].y<0) {juggleDir[i]=juggleDir[i]*-1;juggle[i].y=1;} // juggling=NO;
                if( juggle[i].y>480){ juggleDir[i]=juggleDir[i]*-1;juggle[i].y=479;}// juggling=NO;
                //if( juggle.x>320) juggling=NO;
                
                //	if(paused==NO){
                
                if ((juggleDir[i]<(2*pi/2-.005))||(juggleDir[i]>(2*pi/2+.005))){
                    hh2= atan((juggleSpeed[i]* sinf(juggleDir[i])-0)/(juggleSpeed[i]* cosf(juggleDir[i])-.15));
                    //if ((clownDir[i]<(pi/2+.05))&&(clownDir[i]>(pi/2-.05))&&(clownSpeed[i]<1.92)){
                }
                
                //	if (sinf(juggleDir)<0) juggleDir=-hh2;
                //	else juggleDir=hh2;
                if ((juggleSpeed[i]* cosf(juggleDir[i])-.15)<0) {juggleDir[i]=hh2+3.14;rotator[i]-=1;}
                else {juggleDir[i]=hh2+0*3.14;rotator[i]+=1;}
                
                //juggleDir=hh2;
                //juggleSpeed=2;
                
                dist=juggleCount;
                juggleSpeed[i]=juggleSpeed[i]+-.1*cosf(juggleDir[i])*(1+dist/12);
                //if (clownSpeed[i]<01) clownSpeed[i]=1.0;
                if (juggleSpeed[i]>18) juggleSpeed[i]=18;
                //rotator+=7*sin(juggleDir); 
                
            }
            glPushMatrix();
            if(device==0)
                glTranslatef(juggle[i].x*2.4, juggle[i].y*2.133, 1);
            else if(device==1)
                glTranslatef(juggle[i].x, juggle[i].y, 1);
            
            glRotatef(rotator[i]*2, 0, 0, 1);
            //		glRotatef(juggleDir*0/1.6-90-rotator, 0, 0, 1);
            if (device==1) glScalef(.47, .47, 1);
            
            [_textures[kTexture_orca] drawAtPoint:CGPointZero];
            
            glPopMatrix();
            
            if (juggle[i].x>350){
                glPushMatrix();
                
                if (device==1)  glTranslatef(290, juggle[i].y, 1);
                if (device==0)  glTranslatef(305*2.2, juggle[i].y*2.133, 1);
                //	glRotatef(juggleDir*0/1.6-90-rotator, 0, 0, 1);
                dist=(juggle[i].x-350)/1800;
                glScalef(.27-dist, .27-dist, 1);
                
                if(device==1) glScalef(.5,.5,1);
                //			[_textures[kTexture_orca] drawAtPoint:CGPointZero];
                glRotatef(-180, 0, 0, 1);
                [arrow drawAtPoint:CGPointZero];
                
                glTranslatef(50, 0, 1);
                
                //      [arrow drawAtPoint:CGPointZero];
                
                
                glPopMatrix();}}
		
		
        glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,.5,.9);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
        glPushMatrix();
		glRotatef(-90, 0, 0, 1);
        //        else
        if(device==1) glTranslatef(-423, 290, 1);
        if(device==0) glTranslatef(-933, 715, 1);
        
        //      (-813, 595)];
        
        //		if (device==1)[_textures[kTexture_LabelSpeed] drawAtPoint:CGPointMake(-383, 245)];
        
        glScalef(1.35, .8, 1);
        //    
        if(device==1) glScalef(.65,.5, 1);
        
        //        if (device==1)
        [bgCircle drawAtPoint:CGPointMake(0, 0)];
        
		glPopMatrix();
        
        glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,.7);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
        
        
        
        
        
		glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,.77);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
		glPushMatrix();
		if(device==0) glTranslatef(301*2.133, 428*2.4, 1);
		else glTranslatef(301, 428, 1);
		glScalef(.57, 1, 1);
		[_textures[kTexture_Shark2] drawAtPoint:CGPointZero];
		glPopMatrix();
		glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,1);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
		
		glPushMatrix();
		glRotatef(-90, 0, 0, 1);
        /*	[_textures[kTexture_LabelSpeed] release];
         if (juggleCount>0){	_textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Rally: %i",juggleCount] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];
         }
         else {	_textures[kTexture_LabelSpeed] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@"Best: %i",juggleHi] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:22];
         }*/
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
		if (device==0)[_textures[kTexture_LabelSpeed] drawAtPoint:CGPointMake(-813, 595)];
        
		if (device==1)[_textures[kTexture_LabelSpeed] drawAtPoint:CGPointMake(-377, 237)];
		glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
		
		glPopMatrix();
        
        //        bgCircle
        
		/*	glPushMatrix();
		 glTranslatef(278, 428, 1);
		 glScalef(.27, .27, 1);
		 glRotatef(-90, 0, 0, 1);
		 [_textures[kTexture_Shark3] drawAtPoint:CGPointZero];
		 glPopMatrix();	*/
        //	[_textures[kTexture_LabelAngle] release];
        
		glPushMatrix();
		glRotatef(-90, 0, 0, 1);
        
		//_textures[kTexture_LabelAngle] = [[Texture2D alloc] initWithString:[NSString stringWithFormat:@" On/Off"] dimensions:CGSizeMake(164, 132) alignment:UITextAlignmentLeft fontName:kFontName fontSize:12];
		glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);
		[_textures[kTexture_LabelAngle] drawAtPoint:CGPointMake(-369, 221)];
		glBlendFunc(GL_ONE, GL_ONE_MINUS_SRC_ALPHA);
		
		glPopMatrix();
		
		if(juggling==YES){
			glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,.77);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
            
			if(paused==NO){
                glPushMatrix();
                if (device==0)  glTranslatef(298*2.4, 26*2.133, 1);
                else glTranslatef(298, 26, 1);
                //		glScalef(.15, .15, 1);
                glScalef(.23, .23, 1);
                glScalef(.65, .65, 1);
                if(device==0) glScalef(2, 2, 1);
                
                glRotatef(-90, 0, 0, 1);
                [_textures[kTexture_twist] drawAtPoint:CGPointZero];
                //glTranslatef(-8, 0, 1);
                
                //	[_textures[kTexture_orcaopac] drawAtPoint:CGPointZero];  lite
                
                glPopMatrix();
			}
            else	{glPushMatrix();
                if (device==0) 
                    glTranslatef(298*2.4, 26*2.133, 1);
                else  glTranslatef(298, 26, 1);
                glScalef(.23, .23, 1);
                glScalef(.65, .65, 1);
                if(device==0) glScalef(2, 2, 1);
                glRotatef(-90, 0, 0, 1);
                [_textures[kTexture_redcirc] drawAtPoint:CGPointZero];
                //glTranslatef(-8, 0, 1);
                
                //	[_textures[kTexture_orcaopac] drawAtPoint:CGPointZero];
                
                glPopMatrix();}
			glTexEnvf(GL_TEXTURE_ENV, GL_TEXTURE_ENV_MODE, GL_COMBINE);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);glColor4f(1,1,1,1);glBlendFunc(GL_SRC_ALPHA,GL_ONE_MINUS_SRC_ALPHA);
            
        }
        
	}
	if (jugglegame==NO){
		glPushMatrix();
		if (device==0) glTranslatef(300*2.33, 460*2.08, 1);
		else  glTranslatef(290  , 450, 1);
		glScalef(.5, .5, 1);
        if (device==1) glScalef(.5, .5, 1);
        
		glRotatef(-90, 0, 0, 1);
		[_textures[kTexture_Shark3] drawAtPoint:CGPointZero];
		glPopMatrix();
	}
	if(lite==YES){
        
        glPushMatrix();
        if(device==0) glTranslatef(21*2.4, 434*2.133, 1);
        else glTranslatef(14, 444, 1);
        //        glScalef(.65, .65, 1);
        glScalef(.4, .4, 1);
        glRotatef(-90, 0, 0, 1);
        [_textures[kTexture_Sharkinv3] drawAtPoint:CGPointZero];
        [_textures[kTexture_Landerinv] drawAtPoint:CGPointZero];
        
        glPopMatrix();
        
        
        glPushMatrix();
        if(adServerIsNil){
            if(device==0) 
                glTranslatef(20*2.4+2, 240*2.133, 1);
            else  glTranslatef(18, 240, 1);
        }
        else{
            if(device==0) 
                glTranslatef(20*2.4+2, (240-12)*2.133, 1);
            else  glTranslatef(18, 228, 1);        
            
        }  
        
        //        glScalef(.95, .95, 1);
        if(device==1)    glScalef(1/2.4, 1/2.133, 1);
        //     if (device==0)   glScalef(2, 2, 1);
        //glRotatef(-90, 0, 0, 1);
        [_textures[kTexture_Lander] drawAtPoint:CGPointZero];
        //glTranslatef(-8, 0, 1);
        
        //[_textures[kTexture_orcaopac] drawAtPoint:CGPointZero];
        
        glPopMatrix();
    }
	
	//Swap the framebuffer
    //    [window bringSubviewToFront:adView];
//    [window sendSubviewToBack:adView];
    
	[glView swapBuffers];
    //    [window bringSubviewToFront:adView];
    
	fuelcounter=1155;
	//if (random()%300==0)[sound1 play];
	
}

@end
