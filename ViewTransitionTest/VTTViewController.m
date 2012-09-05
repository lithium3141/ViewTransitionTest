//
//  VTTViewController.m
//  ViewTransitionTest
//
//  Created by Tim Ekl on 8/21/12.
//  Copyright (c) 2012 Tim Ekl. All rights reserved.
//

#import "VTTViewController.h"

@interface VTTViewController ()

@property UIView *fromView;
@property UIView *toView;
@property UIView *containerView;

@end

@implementation VTTViewController

- (CGRect)frame;
{
    return CGRectMake(0.0, 0.0, 100.0, 100.0);
}

- (void)viewDidAppear:(BOOL)animated;
{
    [super viewDidAppear:animated];
    
    CGRect containerFrame = CGRectMake(100.0, 100.0, 100.0, 100.0);
    self.containerView = [[UIView alloc] initWithFrame:containerFrame];
    [self.view addSubview:self.containerView];
    
    self.fromView = [[UIView alloc] initWithFrame:self.frame];
    self.fromView.backgroundColor = [UIColor blueColor];
    [self.containerView addSubview:self.fromView];
}

- (IBAction)transition:(id)sender;
{
    self.toView = [[UIView alloc] initWithFrame:self.frame];
    self.toView.backgroundColor = [UIColor redColor];
    
    [UIView transitionFromView:self.fromView toView:self.toView duration:2.0 options:UIViewAnimationOptionTransitionFlipFromLeft completion:nil];
}

@end
