//
//  MGDrawingSlate.h
//  MGDrawingSlate
//
//  Created by Mihir Garimella on 6/28/12.
//  Copyright (c) 2012 Mihir Garimella.
//  Licensed for use under the MIT License. See the license file included with this source code or visit http://opensource.org/licenses/MIT for more information.
//

#import <UIKit/UIKit.h>
#import "AtoZPointsArray.h"
#define SCREEN_WIDTH ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.width : [[UIScreen mainScreen] bounds].size.height)
#define SCREEN_HEIGHT ((([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortrait) || ([UIApplication sharedApplication].statusBarOrientation == UIInterfaceOrientationPortraitUpsideDown)) ? [[UIScreen mainScreen] bounds].size.height : [[UIScreen mainScreen] bounds].size.width)



@interface MGDrawingSlate : UIView <UIPageViewControllerDelegate>
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
 
 @public int checkcount[18];
    

  
}

@property (strong,nonatomic) UIImageView *testimage;


//@property (assign) id <MGDrawingSlateDelegate> delegate;




//-(void)undo;
@end
