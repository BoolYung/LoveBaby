//
//  AppDelegate.m
//  LoveBaby
//
//  Created by 梅阳阳 on 15/4/23.
//  Copyright (c) 2015年 KingYang. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)setupNavigationBarStyle {
    
    UINavigationBar *appearance = [UINavigationBar appearance];
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0) {
        
        // 设置导航条背景颜色，在iOS7才这么用
        [appearance setBarTintColor:[UIColor colorWithRed:0.291 green:0.607 blue:1.000 alpha:1.000]];
        // 设置导航条的返回按钮或者系统按钮的文字颜色，在iOS7才这么用
        [appearance setTintColor:[UIColor whiteColor]];
        // 设置导航条的title文字颜色，在iOS7才这么用
        [appearance setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                            [UIColor blackColor], NSForegroundColorAttributeName, [UIFont systemFontOfSize:17], NSFontAttributeName, nil]];
        
    } else {
        // 设置导航条的背景颜色，在iOS7以下才这么用
        [appearance setTintColor:[UIColor colorWithRed:0.291 green:0.607 blue:1.000 alpha:1.000]];
    }
}
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    
    [application setStatusBarStyle:UIStatusBarStyleLightContent];
    application.applicationIconBadgeNumber = 0;
    
    MainViewController *mainViewController = [[MainViewController alloc] initWithNibName:@"MainViewController" bundle:nil];
    UINavigationController *rootVC = [[UINavigationController alloc] initWithRootViewController:mainViewController];
    [self setupNavigationBarStyle];
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
