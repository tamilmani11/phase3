//
//  IAlphabets.h
//  testingONphase
//
//  Created by BSA univ 9 on 05/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "AtoZPointsArray.h"
@interface IAlphabets : UIView
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
    
    
@public int checkcount[30];
    
}
-(void)MethodI:(CGPoint)TouchLocation;@end
