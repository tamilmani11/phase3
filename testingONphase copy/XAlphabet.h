//
//  XAlphabet.h
//  writing
//
//  Created by BSA univ 8 on 08/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AtoZPointsArray.h"
#import "ViewController.h"

@interface XAlphabet : UIView

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

-(void)MethodX:(CGPoint)TouchLocation;



@end
