//
//  GetKidNameViewController.m
//  testingONphase
//
//  Created by BSA univ 9 on 25/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "GetKidNameViewController.h"

#import "AppDelegate.h"
#import "KidName.h"
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)

@interface GetKidNameViewController ()<UITextFieldDelegate>
{   NSArray *devices;
    
    UITextField *getname;
    UIButton *nextbutton;
    AppDelegate *appDelageteObj;
    KidName *kid;
}

@end

@implementation GetKidNameViewController
@synthesize managedObjectContext;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (NSManagedObjectContext *)managedObjectContext {
    NSManagedObjectContext *context = nil;
    id delegate = [[UIApplication sharedApplication] delegate];
    if ([delegate performSelector:@selector(managedObjectContext)]) {
        context = [delegate managedObjectContext];
    }
    return context;
}
- (void)viewDidLoad

{
    
    devices=[[NSArray alloc]init];
  
    NSFetchRequest *fetchRequest = [[NSFetchRequest alloc]init];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"KidName" inManagedObjectContext:self.managedObjectContext];
    [fetchRequest setEntity:entity];
    NSError* error;
    devices = [self.managedObjectContext executeFetchRequest:fetchRequest error:&error];
    

    self.view.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"front.png"]];
    nextbutton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [nextbutton addTarget:self
               action:@selector(aMethod:)
     forControlEvents:UIControlEventTouchUpInside];
   // [nextbutton setTitle:@"Save" forState:UIControlStateNormal];
    nextbutton.frame = CGRectMake(SCREEN_WIDTH/2-100, SCREEN_HEIGHT/2, 160.0, 60.0);
    [nextbutton setBackgroundImage:[UIImage imageNamed:@"save.png"] forState:UIControlStateNormal];
    [self.view addSubview:nextbutton];
    getname = [[UITextField alloc] initWithFrame:CGRectMake(SCREEN_WIDTH/2-200, SCREEN_HEIGHT/2-100, 400, 40)];
    
    getname.textColor = [UIColor colorWithRed:0/256.0 green:84/256.0 blue:129/256.0 alpha:1.0];
    
    getname.backgroundColor=[UIColor whiteColor];
   
    getname.placeholder=@"Enter Name";
  
    [self.view addSubview:getname];
     _tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(hideKeyboard)];
    getname.delegate=self;
    _tap.enabled = NO;
    [self.view addGestureRecognizer:_tap];
    
    
    
    if (self.managedObjectContext)
    {
       // [getname setText:[self.managedObjectContext valueForKey:@"name"]];
    }
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}




-(void)aMethod:(id)sender
{
    NSString *nameRegex =@"[a-zA-z]+";
    
   
    NSPredicate *nameTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", nameRegex];
   
    if(![nameTest evaluateWithObject:getname.text])
    {
        
        UIAlertView *alertUser = [[UIAlertView alloc]initWithTitle:@"Warning !" message:@"Username should only contain alphabetic letters." delegate:Nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [alertUser show];
        
        
    }
    else if (devices.count==0)
    {
                 kid=[NSEntityDescription insertNewObjectForEntityForName:@"KidName" inManagedObjectContext:self.managedObjectContext];
                 kid.no=@"1";
                 kid.name=getname.text;
                  NSError* error;
                 if (![self.managedObjectContext save:&error]) {
                     NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
                     
                 }
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle:nil];
        ViewController *bobj =
        [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        
        [self presentViewController:bobj
                           animated:YES
                         completion:nil];

    }
    else
    {
        
        for (NSManagedObject *obj in devices)
        {
            NSString *test=@"1";
            if ([test isEqualToString:[obj valueForKey:@"no"]])
            {
                
                [obj setValue:getname.text forKey:@"name"];

            }
            
      
            NSError* error;
        if (![self.managedObjectContext save:&error]) {
            NSLog(@"Can't Save! %@ %@", error, [error localizedDescription]);
        }


            
        }
        UIStoryboard* storyboard = [UIStoryboard storyboardWithName:@"Main"
                                                             bundle:nil];
        ViewController *bobj =
        [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
        
        [self presentViewController:bobj
                           animated:YES
                         completion:nil];

    }
    //}
    
}
 
    
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    _tap.enabled = YES;
    return YES;
}

-(void)hideKeyboard
{
    
    [getname resignFirstResponder];
    
    _tap.enabled = NO;
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
