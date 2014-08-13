//
//  MViewController.h
//  testingONphase
//
//  Created by BSA univ 9 on 06/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *drawView;

@property (strong, nonatomic) IBOutlet UIView *demoView;

@property (strong,nonatomic) UIImageView *testimage;
-(void)setImage;

@end
