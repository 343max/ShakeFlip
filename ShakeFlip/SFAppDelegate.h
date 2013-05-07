//
//  SFAppDelegate.h
//  ShakeFlip
//
//  Created by Max Winde on 06.05.13.
//  Copyright (c) 2013 Max Winde. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SFViewController;

@interface SFAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) SFViewController *viewController;

@end
