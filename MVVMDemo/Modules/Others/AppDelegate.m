//
//  AppDelegate.m
//  MVVMDemo
//
//  Created by Yang on 2021/4/12.
//
#import "HomeViewController.h"
#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[HomeViewController alloc]init]];
    [self.window makeKeyAndVisible];
    return YES;
}




@end
