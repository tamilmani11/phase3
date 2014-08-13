//
//  BViewController.m
//  testingONphase
//
//  Created by BSA univ 9 on 18/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "BViewController.h"
#import "BAlphabets.h"
#import <QuartzCore/QuartzCore.h>
#import "CViewController.h"
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

@interface BViewController ()
{
    BAlphabets *drawingSlate;
    UIButton * nextbutton ;
      UIButton *prebutton ;
}

@end

@implementation BViewController
@synthesize drawView,demoView,testimage,testimage1;

CGRect drawFrame;
CGRect demoFrame;
- (void)viewDidLoad
{    [self createbutton];
    
    [super viewDidLoad];
    drawView=[[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    drawFrame=drawView.frame;
    drawingSlate = [[BAlphabets alloc] initWithFrame:drawFrame];
    [self Alphabet:drawingSlate];
}
-(void)setImage
{
 [testimage setImage:[UIImage imageNamed:@"B.jpg"]];
}

- (void)viewDidUnload
{
    
    [self setDrawView:nil];
    [super viewDidUnload];
    
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)Alphabet  :(UIView *)CurrView
{
    demoView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    demoView.backgroundColor=[UIColor clearColor];
    [demoView removeFromSuperview];
    [self selfanimation];
    [self.view addSubview:demoView];
    //[self.view bringSubviewToFront:demoView];
    testimage=[[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT-100)];
    //[self setImage];
    [self.view addSubview:testimage];
    [drawView removeFromSuperview];
    CurrView.backgroundColor=[UIColor clearColor];
    [CurrView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:CurrView];
    
    
    
}
-(void)selfanimation
{
    
    testimage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0+100, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-200)];
    testimage1.animationImages=@[[UIImage imageNamed:@"b1.png"],
                                 [UIImage imageNamed:@"b2.png"],
                                 [UIImage imageNamed:@"b3.png"],
                                 [UIImage imageNamed:@"b4.png"],
                                 [UIImage imageNamed:@"b5.png"],
                                 [UIImage imageNamed:@"b6.png"],
                                 [UIImage imageNamed:@"b7.png"],
                                 [UIImage imageNamed:@"b8.png"],
                                 [UIImage imageNamed:@"b9.png"],
                                 [UIImage imageNamed:@"b10.png"],
                                 [UIImage imageNamed:@"b11.png"],
                                 [UIImage imageNamed:@"b12.png"],
                                 [UIImage imageNamed:@"b13.png"],
                                 [UIImage imageNamed:@"b14.png"],
                                 [UIImage imageNamed:@"b15.png"],
                                 [UIImage imageNamed:@"b16.png"],
                                 [UIImage imageNamed:@"b17.png"],
                                 [UIImage imageNamed:@"b18.png"],
                                 [UIImage imageNamed:@"b19.png"],
                                 [UIImage imageNamed:@"b20.png"],
                                 [UIImage imageNamed:@"b21.png"],
                                 [UIImage imageNamed:@"b22.png"],
                                 [UIImage imageNamed:@"b23.png"],
                                 [UIImage imageNamed:@"b24.png"],
                                 [UIImage imageNamed:@"b25.png"],

                                 ];
    
 //   testimage1.animationRepeatCount=nil;
    testimage1.animationDuration=5.0;
    [testimage1 startAnimating];
    [self.view addSubview:testimage1];

}
-(void)createbutton
{
    nextbutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [nextbutton setImage:[UIImage imageNamed:@"next.jpeg"] forState:UIControlStateNormal];
    
    
    nextbutton.frame=CGRectMake(SCREEN_WIDTH-130 ,SCREEN_HEIGHT-80, 100, 60);
    //[button.titleLabel setTextColor:[UIColor blackColor]];
    // [button setTitle:@"Next" forState:UIControlStateNormal];
    [nextbutton addTarget:self
               action:@selector(nextcallMethodA:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:nextbutton];
    prebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [prebutton setImage:[UIImage imageNamed:@"pre.jpeg"] forState:UIControlStateNormal];
    
    
    prebutton.frame=CGRectMake(SCREEN_WIDTH/2-500 ,SCREEN_HEIGHT-80, 100, 60);
    //[button.titleLabel setTextColor:[UIColor blackColor]];
    // [button setTitle:@"Next" forState:UIControlStateNormal];
    [prebutton addTarget:self
                   action:@selector(precallMethodB:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:prebutton];

    
}

-(void)nextcallMethodA:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    CViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"CViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}
-(void)precallMethodB:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    ViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}




@end
