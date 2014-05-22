//
//  AppDelegate.m
//  EasyDefaultImages
//
//  Created by Rudd Fawcett on 12/12/13.
//  Copyright (c) 2013 Rudd Fawcett. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [[UIApplication sharedApplication] setStatusBarHidden:YES];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    UITapGestureRecognizer *windowTapped = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tappedWindow)];
    [self.window addGestureRecognizer:windowTapped];
    
    UIViewController *viewController = [[UIViewController alloc] init];
    viewController.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 20, self.window.bounds.size.width, 44)];
    
    [viewController.view addSubview:navigationBar];
    
    UIView *statusBar = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.window.bounds.size.width, 20)];
    statusBar.backgroundColor = [UIColor colorWithWhite:0.973 alpha:1.0];
    // Status Bar color is the default color for a translucent UINavigationBar
    
    [viewController.view addSubview:statusBar];
    
    // To add a tabBar, uncomment the code below.
    // UITabBarController *tabBarController = [[UITabBarController alloc] init];
    // tabBarController.viewControllers = @[viewController];
    // self.window.rootViewController = tabBarController;
    
    self.window.rootViewController = viewController;
    
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)tappedWindow {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Take a Screenshot"
                                                        message:@"To use this image, take a screenshot (command + s) in the simulator.  You can then find the image on your desktop."
                                                       delegate:Nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
    
    [alertView show];
}

@end
