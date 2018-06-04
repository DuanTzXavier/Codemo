//
//  AppDelegate.m
//  Codemo
//
//  Created by dtz段天章 on 2018/5/31.
//  Copyright © 2018年 dtz段天章. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout alloc];
    ViewController *controller = [[ViewController alloc] initWithCollectionViewLayout : layout];
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:(controller)];
    UINavigationBar.appearance.barTintColor = [UIColor colorWithRed:239/255.0 green:32/255.0 blue:31/255.0 alpha:1];
    
    UIView *statusBar = [[UIView alloc] init];
    statusBar.backgroundColor = [UIColor colorWithRed:194/255.0 green:31/255.0 blue:31/255.0 alpha:1];
    [self.window addSubview:statusBar];
    [self.window addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[statusBar]|" options:0 metrics:NULL views:NSDictionaryOfVariableBindings(statusBar)]];
    [self.window addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[statusBar(20)]|" options:0 metrics:NULL views:NSDictionaryOfVariableBindings(statusBar)]];

    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
