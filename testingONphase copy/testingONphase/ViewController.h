//
//  ViewController.h
//  testingONphase
//
//  Created by BSA univ 9 on 08/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGDrawingSlate.h"




@interface ViewController : UIViewController
{
    
}



@property (strong, nonatomic) IBOutlet UIView *drawView;

@property (strong, nonatomic) IBOutlet UIView *demoView;

@property (strong,nonatomic) UIImageView *testimage;
@property (strong,nonatomic) UIImageView *testimage1;
@property (strong, nonatomic) NSManagedObjectContext *managedObjContext;
@property(strong,nonatomic)NSArray *nameArry;
-(void)setImage;
-(void)setImageNil;
-(void)callMethodA:(id)sender;

@end
