//
//  AppDelegate.h
//  QRCODE
//
//  Created by Apple on 25/03/14.
//  Copyright (c) 2014 Premkumar. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (strong,nonatomic) UINavigationController *mainNavigation;
@property (strong, nonatomic) UIWindow *window;
@property (strong,nonatomic)ViewController *viewController;
@end
