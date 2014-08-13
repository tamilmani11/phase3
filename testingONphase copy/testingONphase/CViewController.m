//
//  CViewController.m
//  testingONphase
//
//  Created by BSA univ 9 on 24/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "CViewController.h"
#import "BViewController.h"
#import "DdViewController.h"
#import "CAlphabets.h"
#import <QuartzCore/QuartzCore.h>
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

@interface CViewController ()
{
    CAlphabets *drawingSlate;
    UIButton * nextbutton ;
    UIButton *prebutton ;
}

@end

@implementation CViewController
@synthesize drawView,demoView,testimage;

CGRect drawFrame;
CGRect demoFrame;
- (void)viewDidLoad
{    [self createbutton];
    
    [super viewDidLoad];
    drawView=[[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    drawFrame=drawView.frame;
    drawingSlate = [[CAlphabets alloc] initWithFrame:drawFrame];
    [self Alphabet:drawingSlate];
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
-(void)setImage
{
    [testimage setImage:[UIImage imageNamed:@"C.jpg"]];
}

-(void)Alphabet  :(UIView *)CurrView
{
    demoView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    demoView.backgroundColor=[UIColor redColor];
    [demoView removeFromSuperview];
    [self.view addSubview:demoView];
    //[self.view bringSubviewToFront:demoView];
    testimage=[[UIImageView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2, SCREEN_HEIGHT-100)];
    [self setImage];
    [self.view addSubview:testimage];
    [drawView removeFromSuperview];
    CurrView.backgroundColor=[UIColor clearColor];
    [CurrView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:CurrView];
    
    
     
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
    DdViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"DViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}
-(void)precallMethodB:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    BViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"BViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}




@end
