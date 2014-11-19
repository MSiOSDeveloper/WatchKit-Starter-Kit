//
//  AppDelegate.m
//  WatchKit-Starter-Kit
//
//  Created by Clayton Rieck on 11/19/14.
//  Copyright (c) 2014 Clayton Rieck. All rights reserved.
//

#import "AppDelegate.h"
//#import "WSKRootWatchInterfaceController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    
//    WSKRootWatchInterfaceController *rootInterfaceController = [[WSKRootWatchInterfaceController alloc] initWithContext:nil];
    
    return YES;
}

@end
