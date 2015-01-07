
//#import "Mobclix.h"
//#import "MobclixAds.h"
//#import "ViewForAd.h"

#import <UIKit/UIKit.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import <CoreLocation/CoreLocation.h>


#import "Texture2D.h"


//#import "FlurryAppCircle.h"
//#import "FlurryAnalytics.h"
//#import "Flurry.h"
//#import "Sound.h"
//@class Sound;

/*
 @interface CrashLandingAppDelegate : NSObject <UIApplicationDelegate, UIAccelerometerDelegate, UIAlertViewDelegate, UITextFieldDelegate>
 {
 Sound *sound;
 }	
 */

@class MyEAGLView;
#define AD_REFRESH_PERIOD 9990.0 // display fresh ads once per minute


//#import <UIKit/UIKit.h>
//#import <AVFoundation/AVAudioPlayer.h>
#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#include <AudioToolbox/AudioToolbox.h>
//#import "AdMobDelegateProtocol.h";

@class AdMobView;


// CONSTANTS 
#define kStripe						5
#define kBaseOffset					20
#define kBaseSize					100
#define kFontName					@"Arial"
#define kStatusFontSize				104
#define kLabelFontSize				18
#define kScoreFontSize				48
#define kFuelBarX					312
#define kFuelBarY					225
#define kLabelY						455
#define kLightY						460
#define kSpeedX						20
#define kAngleX						120
#define kPositionX					220
#define kLabelOffset				40

#define kInitialVelocity			100   //Pixels/s
#define kInitialFuel				440   //Seconds
#define kMass						80    //Kg
#define kGravity					40    //Pixels/s2
#define kMainThrustThreshold		-0.7050 //Accelerometer Y axis value (about 45 degrees angle)
#define kLateralThrustThreshold		0.02   //Accelerometer X axis value
#define kMainThrust					10000 //N
#define kRotationSpeed				100   //Degrees/s
#define kLateralSpeed				10    //Pixels/s

#define kMaxVelocity				705   //Pixels/s
#define kMaxRotation				280   //Degrees

#define kScoreVelocity				4000
#define kScoreFuel					2500
#define kScoreRotation				2000
#define kScoreDistance				1500

enum {
	kTexture_Title = 0,
	kTexture_Background,
	kTexture_Background2,
	kTexture_Clown,
	kTexture_Clowninv,
	kTexture_Stripe,
	kTexture_Stripeinv,
	kTexture_Green,
	kTexture_Greeninv,
	kTexture_Red,
	kTexture_Redinv,
	kTexture_Yellow,
	kTexture_Yellowinv,
	kTexture_Blue,
	kTexture_Blueinv,
	kTexture_indigo,
	kTexture_indigoinv,
	kTexture_grey,
	kTexture_greyinv,
	kTexture_spike,
	kTexture_twist,
	kTexture_chain,
	kTexture_Shark,
	kTexture_Sharkinv,
	kTexture_orca,
	kTexture_orcainv,
	kTexture_Shark3,
	kTexture_Sharkinv3,
	kTexture_Shark2,
	kTexture_Sharkinv2,
	kTexture_Sharkshadow,
	kTexture_Landershadow,
	kTexture_Lander,
	kTexture_Landerinv,
	kTexture_lasershot,
	kTexture_Base,
	kTexture_bubbly,
	kTexture_MainThrust,
	kTexture_LeftThrust,
	kTexture_RightThrust,
	kTexture_Explosion,
	kTexture_FuelBar,
	kTexture_FuelLevel,
	kTexture_life,
	kTexture_life2,
	kTexture_orcaopac,
	kTexture_orcaopacinv,
	kTexture_no,
	kTexture_redcirc,
	
	kTexture_sun,
	kTexture_sun2,
	
	
	kTexture_LightGreen,
	kTexture_LightRed,
	kTexture_LabelSpeed,
	kTexture_LabelAngle,
	kTexture_LabelPosition,
	kNumTextures
};

//enum {
//	kSound_Thrust = 0,
//	kSound_Start,
//	kSound_Success,
//	kSound_Failure,
//	kNumSounds
//};

typedef enum {
	kState_StandBy = 0,
	kState_Running,
	kState_Success,
	kState_Failure
} State;

// STRUCTURES
typedef struct
	{
		GLfloat			x;
		GLfloat			y;
	} Vector2D;

//CLASS INTERFACE
@interface CrashLandingAppDelegate : NSObject <UIApplicationDelegate, AVAudioPlayerDelegate, UIAccelerometerDelegate,UIAlertViewDelegate, UITextFieldDelegate>
{
    
  //  MobclixAdView* adView;

    
//    NSMutableData *responseData;
//    id<WSResponseProtocol> delegate;
	/*Sound *chomp;
	 Sound *laser;
	 Sound *win;
	 Sound *win2;
	 Sound *bubblesamb;
	 Sound *timelow;
	 Sound *apple;
	 Sound *apple2;
	 Sound *apple3;
	 Sound *apple4;
	 Sound *apple5;
	 
	 Sound *clap;
	 Sound *yea;
	 Sound *lose;
	 Sound *stung;
	 Sound *pick;
	 Sound *calib;*/
	AdMobView *adMobAd;  // the actual ad; self.view is a placeholder to indicate where the ad should be placed; intentially _not_ an IBOutlet
	//AdMobView *buyAd;  // the actual ad; self.view is a placeholder to indicate where the ad should be placed; intentially _not_ an IBOutlet
	
	NSTimer *autoslider; // timer to slide in fresh ads
	//IBOutlet UIWindow *window;
	
	
	UIButton *myButton;
	UIButton *myButton2;
	
	AVAudioPlayer *sound1;
	AVAudioPlayer *sound2;
	AVAudioPlayer *sound3;
	AVAudioPlayer *sound4;
	AVAudioPlayer *sound5;
	AVAudioPlayer *sound6;
	AVAudioPlayer *sound7;
	AVAudioPlayer *sound8;
	
    int device;
    float shortSide;
    float longSide;
    BOOL adServerIsNil,justFreeAppDaily;
    BOOL userClickedPackagedAd;
	
	IBOutlet UIWindow		*window;
	IBOutlet MyEAGLView		*glView;
	
	UITextField*			_textField;
	
	Texture2D*				_textures[kNumTextures];
	Texture2D*			arrow;
    Texture2D*              bgCircle;
	//UInt32					_sounds[kNumSounds];
	
	CGRect					_landerBounds;
	UIAccelerationValue		_accelerometer[3];
	Texture2D*				_statusTexture;
	BOOL					_firstTap;
	
	NSTimer*				_timer;
	State					_state;
	CFTimeInterval			_lastTime;
	BOOL					lite;
	GLfloat					_basePosition;
	GLfloat					_rotation,
	_rotationVelocity;
	Vector2D				_position,laserstart,
	_velocity,
	clownpos,
	
	clown[55],
	stripe[kStripe],
	shark,mouth;
	NSUserDefaults*		defaults;// = [NSUserDefaults standardUserDefaults];
	NSString*			name ;//= [defaults stringForKey:kUserNameDefaultKey];
	NSDate*				date;// = [NSDate date];
	NSMutableArray*		scores;
	NSMutableString*	string;
	unsigned			m;
	NSDictionary*		dictionary;
	
	
	CGPoint startTouch,startTouch2, currentTouch,spike[4],ssspike[4];
    int anime,levelct,levelstate,bubnum,sprites,spread,dance;
	float movecounter,red,blue,green,colorDelta,spinCo; 
	int kClown;//						29
	bool warning,juggling,jugglegame,paused,vis;
	int sizeDiff,jugnum;//.4*j+.94;
	float size,sizePart;//=.5+(startTouch.x-bub[i].x)/333,
	float pulse;//=42;
	int pulseDiff;
	float screen,dist,scaleshark,pi,rotator[5];
	int						zzz,lives,liveshh,lasercounter,fade,juggleHi,juggleCount;
	float fuelcounter,swingfast,spanswing,cc,view ;
	int first,wincounter,spikenum,swayseparate,leftright,updown,max3,rnd,rnd2,charc,score0,fishtype[55],touchdown,eaten,clownleft,i,j;
	float					spikecounter,ragh,aim,sharkdir,offsetdirt,avg,dir,xx,yy,zz,backindex;
	float					clownSpeed[55],escape[55],counter,
	clownDir[55],bubSpeed[555],bubDir[555],bubLife[555];
	
	Vector2D												bub[555],juggle[5];
	float					hh3,hh2,h1,h0,juggleDir[5],juggleSpeed[5];
	float					_fuel,xxhh;
	unsigned				_score;
    int version;
    
    IBOutlet UINavigationController *navigationController;
//    ViewForAd *_viewForAd;
    
    UIView *banner;
//    ViewForAd *_viewForAd =(ViewForAd*)[[UIApplication sharedApplication] delegate];
//    Your-appAppDelegate *appDelegate = (Your-appAppDelegate *)[[UIApplication sharedApplication] delegate];

}

@property (nonatomic, retain) UINavigationController *navigationController;


@property (nonatomic, retain) IBOutlet UIButton *myButton;
@property (nonatomic, retain) IBOutlet UIButton *myButton2;

@property (nonatomic, retain) AVAudioPlayer *sound1;
@property (nonatomic, retain) AVAudioPlayer *sound2;
@property (nonatomic, retain) AVAudioPlayer *sound3;
@property (nonatomic, retain) AVAudioPlayer *sound4;
@property (nonatomic, retain) AVAudioPlayer *sound5;
@property (nonatomic, retain) AVAudioPlayer *sound6;
@property (nonatomic, retain) AVAudioPlayer *sound7;
@property (nonatomic, retain) AVAudioPlayer *sound8;

//@property(nonatomic,retain) MobclixAdView* adView;
//@property(nonatomic,retain) IBOutlet MobclixAdView* adView;

- (void)handleTap:(CGPoint)touchpt;
//- (void)handleTap:(NSSet*)touches withEvent:(UIEvent*)event;

- (void)handlebegan:(CGPoint)touches withEvent:(UIEvent *)event;


- (void)handledispatch;

- (void)handleMoved:(CGPoint)currentT withEvent:(UIEvent *)event;
- (void)refreshAd:(NSTimer *)timer;

//- (void)touchesEnded;
- (IBAction)buttonPressed:(id)sender;
- (IBAction)buttonPressed2:(id)sender;


-(void) addAdvBanner;
-(void) removeAdvBanner;
@end
