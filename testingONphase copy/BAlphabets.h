///Users/bcauniv9/Desktop/testingONphase copy/testingONphase/DdViewController.h
//  BAlphabets.h
//  testingONphase
//
//  Created by BSA univ 9 on 18/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AtoZPointsArray.h"
#import "ViewController.h"
@interface BAlphabets : UIView
{
    
@public UIBezierPath *drawingPath;
@public UIColor *drawingColor;
@public AtoZPointsArray *AtozObj;
@public NSArray *copyAtoZarray;
    
@public float xCoordinate;
@public float yCoordinate;
@public BOOL setBool;
@public NSMutableArray *swap;
@public CAShapeLayer *shapeLayer;
    
@public ViewController *mainView;
@public int checkcount[30];
    
    
    
    
}
-(void)MethodB:(CGPoint)TouchLocation;
@end
