//
//  DetailViewController.m
//  QRCODE
//
//  Created by Apple on 25/03/14.
//  Copyright (c) 2014 Premkumar. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
     [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
    
    _segment.selectedSegmentIndex=1;
    
    
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)segmentClick:(id)sender
{
    
    if (_segment.selectedSegmentIndex==0)
    {
        NSLog(@"O");
        
        ViewController *detail=[[ViewController alloc]initWithNibName:@"ViewController" bundle:nil];
        [self.navigationController pushViewController:detail animated:NO];
    }
    else
    {
        NSLog(@"1");
        
        
        
    }
    
}




@end
