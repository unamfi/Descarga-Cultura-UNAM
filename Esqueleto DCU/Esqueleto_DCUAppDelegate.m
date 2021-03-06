//
//  Esqueleto_DCUAppDelegate.m
//  Esqueleto DCU
//
//  Created by julio.guzman on 18/11/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "Esqueleto_DCUAppDelegate.h"

#import "Esqueleto_DCUViewController.h"

@implementation Esqueleto_DCUAppDelegate


@synthesize window=_window;

@synthesize viewController=_viewController;

- (void) animateSplashScreen {
	//fade time
	CFTimeInterval animation_duration = 10.0;
    
	//SplashScreen
	splashViewTop = [[[UIImageView alloc] initWithFrame:CGRectMake(0,20, 320, 460)]autorelease];
	splashViewTop.image = [UIImage imageNamed:@"top.png"];
	
	
	[_window addSubview:splashViewTop];
	[_window bringSubviewToFront:splashViewTop];
	
	
	//Animation (fade away with zoom effect)
	[UIView beginAnimations:nil context:nil];
	[UIView setAnimationDuration:animation_duration];
	[UIView setAnimationTransition:UIViewAnimationTransitionNone forView:nil cache:YES];
	[UIView setAnimationDelegate:splashViewTop]; 
	[UIView setAnimationDidStopSelector:@selector(removeFromSuperview)];
	
	
	
	//splashView.alpha = 0.0;
	//splashViewTop.frame = CGRectMake(-160,-330, 320*2, 480*2);
	splashViewTop.alpha=0;
	
	
	[UIView commitAnimations];
	
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    [self animateSplashScreen];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

- (void)dealloc
{
    [_window release];
    [_viewController release];
    [super dealloc];
}

@end
