//
//  VTTAppDelegate.h
//  ViewTransitionTest
//
//  Created by Tim Ekl on 8/21/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import <UIKit/UIKit.h>

@class VTTViewController;

@interface VTTAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) VTTViewController *viewController;

@end
