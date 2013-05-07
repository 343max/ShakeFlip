//
//  SFViewController.h
//  ShakeFlip
//
//  Created by Max Winde on 06.05.13.
//  Copyright (c) 2013 Max Winde. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "F3PlotStrip.h"

@interface SFViewController : UIViewController

@property (weak, nonatomic) IBOutlet F3PlotStrip *xAxisView;
@property (weak, nonatomic) IBOutlet F3PlotStrip *yAxisView;
@property (weak, nonatomic) IBOutlet F3PlotStrip *zAxisView;

@end
