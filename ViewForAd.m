//
//  ViewForAd.m
//  Lander
//
//  Created by Jonathan Giles GILES on 2/18/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewForAd.h"

@implementation ViewForAd

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

/*
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
   [Mobclix startWithApplicationId:@"8413f5b1-de69-4f95-ae40-532a617438a7"];

    adView = [[[MobclixAdViewiPhone_320x50 alloc] initWithFrame:CGRectMake(-190.0f, 190.0f, 320.0f, 50.0f)] autorelease];
    //    self.adView = [[[MobclixAdViewiPad_768x100 alloc] initWithFrame:CGRectMake(10.0f, 10.0f, 320.0f, 50.0f)] autorelease];
    //[self.adView makeKeyAndVisible];
    //	[self.window addSubview:self.adView];
    //    [self.adView setCenter
    //     [self.
    [adView setCenter:CGPointMake(160,160) ];
    adView.hidden=NO;
    //adView.transform = CGAffineTransformMakeRotation(M_PI / 2);
    
	[self.view addSubview:adView];
    
    NSLog(@"Setup viewforad");
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

*/

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
