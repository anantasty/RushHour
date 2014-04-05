//
//  ViewController.h
//  QRCODE
//
//  Created by Apple on 25/03/14.
//  Copyright (c) 2014 Premkumar. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZBarSDK.h"
#import "ZBarReaderView.h"


@interface ViewController : UIViewController<ZBarReaderDelegate>
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)segmentClick:(id)sender;
@property(nonatomic,retain)IBOutlet UIView *scan_view;
@property(nonatomic,retain)IBOutlet UIView *scan_main_view;
@property(nonatomic,retain)IBOutlet ZBarReaderViewController *reader;

-(IBAction)scan:(id)sender;
@end
