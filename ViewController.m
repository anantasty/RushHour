//
//  ViewController.m
//  QRCODE
//
//  Created by Apple on 25/03/14.
//  Copyright (c) 2014 Premkumar. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize reader;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}


-(void)imagePickerController:(UIImagePickerController*)picker didFinishPickingMediaWithInfo:(NSDictionary*)info
{
    
    
    // ADD: get the decode results
    id<NSFastEnumeration> results =
    [info objectForKey: ZBarReaderControllerResults];
    ////(@"info");
    ZBarSymbol *symbol = nil;
    for(symbol in results)
        break;
    
    ////(@"datas %@",symbol.data);
    
    NSString *result=[NSString stringWithFormat:@"%@",symbol.data];
    
    NSArray *arrString = [result componentsSeparatedByString:@" "];
    
    NSLog(@"ASRR STR:%@",arrString);
    
    
    NSString *finalString=@"";
    
    for(int i=0; i<arrString.count;i++){
        if([[arrString objectAtIndex:i] rangeOfString:@"http"].location != NSNotFound)
            ////(@"ARRA:%@", [arrString objectAtIndex:i]);
            
            finalString=[arrString objectAtIndex:i];
    }
    
    
    
    
    
 
        
    
        
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Alert" message:finalString delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
    [alert show];
    
    
        
        //[[UIApplication sharedApplication] openURL:[NSURL URLWithString:finalString]];
        
        [reader.view removeFromSuperview];
   
    [info objectForKey: UIImagePickerControllerOriginalImage];
    
    
    //
    
    
    
    
}


-(void)viewWillAppear:(BOOL)animated
{
    
    
    /*
    reader = [ZBarReaderViewController new];
    reader.readerDelegate = self;
    
    
    reader.wantsFullScreenLayout = NO;
    
    reader.showsZBarControls = NO;
    
    reader.supportedOrientationsMask = ZBarOrientationMaskAll;
	
    [reader.view setFrame:CGRectMake(0, 0, 320,446)];
    
    ZBarImageScanner *scanner = reader.scanner;
    // TODO: (optional) additional reader configuration here
	
    // EXAMPLE: disable rarely used I2/5 to improve performance
    [scanner setSymbology: ZBAR_I25
				   config: ZBAR_CFG_ENABLE
					   to: 0];
    
    // hideview.frame=CGRectMake(0, 420, 320, 40);
	
    // present and release the controller
    
    [_scan_view addSubview:reader.view];
    
    */
    
    
  
   // [reader release];
     
     
    
}

-(IBAction)scan:(id)sender
{
    ZBarReaderViewController *reader1 = [ZBarReaderViewController new];
    reader1.readerDelegate = self;
    reader1.supportedOrientationsMask = ZBarOrientationMaskAll;
    
    ZBarImageScanner *scanner = reader.scanner;
    // TODO: (optional) additional reader configuration here
    
    // EXAMPLE: disable rarely used I2/5 to improve performance
    [scanner setSymbology: ZBAR_I25
                   config: ZBAR_CFG_ENABLE
                       to: 0];
    
    
    reader1.wantsFullScreenLayout = NO;
    
    reader1.showsZBarControls = YES;
    
    reader1.supportedOrientationsMask = ZBarOrientationMaskAll;
	
    [reader1.view setFrame:CGRectMake(0, 100, 320,446)];
    
    

    
    // present and release the controller
    
   
  
    
    [self presentViewController:reader1 animated:YES completion:nil];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
     [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationSlide];
   

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
        
        
    }
    else
    {
        NSLog(@"1");
        
        DetailViewController *detail=[[DetailViewController alloc]initWithNibName:@"DetailViewController" bundle:nil];
        [self.navigationController pushViewController:detail animated:NO];
        
    }
    
}
@end
