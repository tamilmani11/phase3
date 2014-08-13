//
//  ViewController.m
//  testingONphase
//
//  Created by BSA univ 9 on 08/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "ViewController.h"

#import "BViewController.h"
#import <QuartzCore/QuartzCore.h>
#import <AVFoundation/AVFoundation.h>
#import "GetKidNameViewController.h"
#import "AppDelegate.h"
#import "KidName.h"
#import "UIImage+animatedGIF.h"
@import AVFoundation;
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

@interface ViewController ()<AVSpeechSynthesizerDelegate>
{
    MGDrawingSlate *drawingSlate;
    NSString *copy;
    UIButton *button;
    UIButton *prebutton;
    int ratingcopy;
    AppDelegate *delobj;
    KidName *num;
    AVSpeechUtterance *utterance;
    AVSpeechSynthesizer *speechSynthesizer;
}

@end

@implementation ViewController
@synthesize drawView,demoView,testimage,testimage1;



CGRect drawFrame;
CGRect demoFrame; 
- (void)viewDidLoad
{    [self createbutton];
    speechSynthesizer = [[AVSpeechSynthesizer alloc] init];//init objects for AVSpeech
    [speechSynthesizer setDelegate:self];
    delobj=[[UIApplication sharedApplication]delegate];
    self.managedObjContext=delobj.managedObjectContext;
     self.nameArry=[delobj getUserData];
    NSLog(@"%d",self.nameArry.count);
    num=[self.nameArry objectAtIndex:0];
    NSString *temp=@"Welcome";
    NSString *displayname=[temp stringByAppendingString:num.name ];
    
    utterance = [[AVSpeechUtterance alloc] initWithString:displayname];
    float speechSpeed = AVSpeechUtteranceMinimumSpeechRate;
    [utterance setRate:speechSpeed];
   
    utterance.voice = [AVSpeechSynthesisVoice voiceWithLanguage:@"en-US"];
   
   [speechSynthesizer speakUtterance:utterance];
    speechSynthesizer=nil;
    
    [super viewDidLoad];
    drawView=[[UIView alloc]initWithFrame:CGRectMake(SCREEN_WIDTH/2, 0, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-100)];
    drawFrame=drawView.frame;
    drawingSlate = [[MGDrawingSlate alloc] initWithFrame:drawFrame];

    [self Alphabet:drawingSlate];
    
    
    
}
-(void)setImage
{
   [testimage setImage:[UIImage imageNamed:@"A.jpg"]];
}
-(void)setImageNil
{
    [testimage setImage:Nil];
    
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
    [self setImage];
    [self.view addSubview:testimage];
    [drawView removeFromSuperview];
    CurrView.backgroundColor=[UIColor clearColor];
    [CurrView setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.view addSubview:CurrView];
    

    
}
-(void)createbutton
{
    button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:[UIImage imageNamed:@"next.jpeg"] forState:UIControlStateNormal];
    
    
    button.frame=CGRectMake(SCREEN_WIDTH-130 ,SCREEN_HEIGHT-80, 100, 60);
    //[button.titleLabel setTextColor:[UIColor blackColor]];
   // [button setTitle:@"Next" forState:UIControlStateNormal];
    [button addTarget:self
               action:@selector(callMethodA:) forControlEvents:UIControlEventTouchUpInside];

    [self.view addSubview:button];
    
    
    prebutton = [UIButton buttonWithType:UIButtonTypeCustom];
    [prebutton setImage:[UIImage imageNamed:@"setting.jpeg"] forState:UIControlStateNormal];
    
    
    prebutton.frame=CGRectMake(SCREEN_WIDTH/2-500 ,SCREEN_HEIGHT-80, 100, 60);
    //[button.titleLabel setTextColor:[UIColor blackColor]];
    // [button setTitle:@"Next" forState:UIControlStateNormal];
    [prebutton addTarget:self
                  action:@selector(precallMethod:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:prebutton];

    
}

-(void)selfanimation
{
    testimage1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0+100, SCREEN_WIDTH/2-5, SCREEN_HEIGHT-200)];
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"outputA" withExtension:@"gif"];
    self.testimage1.image = [UIImage animatedImageWithAnimatedGIFData:[NSData dataWithContentsOfURL:url]];
    
   [self.view addSubview:testimage1];
}


-(void)callMethodA:(id)sender

{
    
    
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    BViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"BViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
   
    
}
-(void)precallMethod:(id)sender

{
    UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                         bundle:nil];
    GetKidNameViewController *bobj =
    [storyboard instantiateViewControllerWithIdentifier:@"GetKidNameViewController"];
    
    [self presentViewController:bobj
                       animated:YES
                     completion:nil];
}




@end
