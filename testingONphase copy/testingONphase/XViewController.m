//
//  XViewController.m
//  writing
//
//  Created by BSA univ 8 on 08/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "XViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "XAlphabet.h"
#import "YViewController.h"
#import "WViewController.h"
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)


@interface XViewController ()
{
    XAlphabet *drawingSlate;
    UIButton * nextbutton ;
    UIButton *prebutton ;
}

@end

@implementation XViewController
@synthesize drawView,demoView,testimage;

CGRect drawFrame;
CGRect demoFrame;


- (void)viewDidLoad
{    [self createbutton];
    
    [super viewDidLoad];
    drawView=[[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    drawFrame=drawView.frame;
    drawingSlate = [[XAlphabet alloc] initWithFrame:drawFrame];
    [self Alphabet:drawingSlate];
}

-(void)setImage
{
    [testimage setImage:[UIImage imageNamed:@"X.jpg"]];
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
                   action:@selector(nextcallMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:nextbutton];
    prebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [prebutton setImage:[UIImage imageNamed:@"pre.jpeg"] forState:UIControlStateNormal];
    
    
    prebutton.frame=CGRectMake(SCREEN_WIDTH/2-500 ,SCREEN_HEIGHT-80, 100, 60);
    //[button.titleLabel setTextColor:[UIColor blackColor]];
    // [button setTitle:@"Next" forState:UIControlStateNormal];
    [prebutton addTarget:self
                  action:@selector(precallMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:prebutton];
    
    
}

-(void)precallMethod:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    WViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"WViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}
-(void)nextcallMethod:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    YViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"YViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
