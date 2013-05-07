//
//  SFViewController.m
//  ShakeFlip
//
//  Created by Max Winde on 06.05.13.
//  Copyright (c) 2013 Max Winde. All rights reserved.
//

#import "SFViewController.h"

@interface SFViewController () <UIAccelerometerDelegate>

@end

@implementation SFViewController

- (void)viewDidLoad;
{
    [super viewDidLoad];
    
    self.xAxisView.lineColor = [UIColor redColor];
    self.yAxisView.lineColor = [UIColor greenColor];
    self.zAxisView.lineColor = [UIColor blueColor];
}

- (void)viewDidAppear:(BOOL)animated;
{
    [super viewDidAppear:animated];
    
    [UIAccelerometer sharedAccelerometer].delegate = self;
    [UIAccelerometer sharedAccelerometer].updateInterval = 0.05;
}

- (void)viewWillDisappear:(BOOL)animated;
{
    [super viewWillDisappear:animated];
    
    [UIAccelerometer sharedAccelerometer].delegate = nil;
}


#pragma mark UIAccelerometerDelegate

- (void)accelerometer:(UIAccelerometer *)accelerometer didAccelerate:(UIAcceleration *)acceleration;
{
    self.xAxisView.value = acceleration.x;
    self.yAxisView.value = acceleration.y;
    self.zAxisView.value = acceleration.z;
}

@end
