//
//  SAlphabets.h
//  testingONphase
//
//  Created by BSA univ 9 on 07/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AtoZPointsArray.h"
@interface SAlphabets : UIView



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
-(void)MethodS:(CGPoint)TouchLocation;
@end