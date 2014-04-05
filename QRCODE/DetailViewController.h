//
//  DetailViewController.h
//  QRCODE
//
//  Created by Apple on 25/03/14.
//  Copyright (c) 2014 Premkumar. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISegmentedControl *segment;
- (IBAction)segmentClick:(id)sender;
@end
