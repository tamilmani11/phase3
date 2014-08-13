//
//  YViewController.h
//  writing
//
//  Created by BSA univ 8 on 08/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *drawView;

@property (strong, nonatomic) IBOutlet UIView *demoView;

@property (strong,nonatomic) UIImageView *testimage;
-(void)setImage;


@end
