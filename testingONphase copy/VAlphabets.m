
//
//  VAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 08/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "VAlphabets.h"

@implementation VAlphabets

static int checkcountvar;
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //Initialize MGDrawingSlate and set default values
        
        self.backgroundColor = [UIColor whiteColor];
        drawingPath = [UIBezierPath bezierPath];
        drawingPath.lineCapStyle = kCGLineCapRound;
        drawingPath.miterLimit = 4;
        drawingPath.lineWidth = 32; //Default line weight - change with changeLineWeightTo: method.
        drawingColor = [UIColor blackColor]; //Default color - change with changeColorTo: method.
        [self viewDidLoad];
    }
    return self;
}


- (void)viewDidLoad
{
    
    checkcountvar=0;
    // mainView=[[ViewController alloc]init];
    AtozObj=[[AtoZPointsArray alloc]init];
    if (checkcountvar==0)
    {
        
        copyAtoZarray=[AtozObj VPointsArray];
    }
    
}

#pragma mark - Drawing Methods

- (void)drawRect:(CGRect)rect
{//Create the point
    
    for (int j=0; j<=copyAtoZarray.count; j++)
    {
        checkcount[j]=0;
    }
    
    for (int i=0; i<copyAtoZarray.count; i++)
    {
        xCoordinate = [[copyAtoZarray objectAtIndex:i] CGPointValue].x;
        yCoordinate = [[copyAtoZarray objectAtIndex:i] CGPointValue].y;
        
        CGContextRef Context = UIGraphicsGetCurrentContext();
        CGContextAddEllipseInRect(Context,(CGRectMake (xCoordinate, yCoordinate, 15.0, 15.0)));
        CGContextDrawPath(Context, kCGPathFill);
        CGContextStrokePath(Context);
        
    }
    
    [drawingColor setStroke];
    
    
    
    
    [drawingPath strokeWithBlendMode:kCGBlendModeNormal alpha:1.0];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    //  UITouch *touch = [[touches allObjects] objectAtIndex:0];
    // UITouch *touch = [[touches allObjects] objectAtIndex:0];
    //CGPoint touchLocation = [touch locationInView:self];
    //[drawingPath moveToPoint: [touch locationInView:self]];
    
    [drawingPath moveToPoint:CGPointMake(79, 143)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
    //  NSLog(@"x=%f", touchLocation.x);
//NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodV:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodV:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>79 && touchLocation.x<=106)
    {
        if(touchLocation.y>143 && touchLocation.y<=220)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(106, 220)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>106 && touchLocation.x<=132)
    {
        if(touchLocation.y>220 && touchLocation.y<=292)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(106, 220)];
                [drawingPath addLineToPoint:CGPointMake(132, 292)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>132 && touchLocation.x<=156)
    {
        if(touchLocation.y>292 && touchLocation.y<=357)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(132, 292)];
                [drawingPath addLineToPoint:CGPointMake(156, 357)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>156 && touchLocation.x<=183)
    {
        if(touchLocation.y>357 && touchLocation.y<=425)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(156, 357)];
                [drawingPath addLineToPoint:CGPointMake(183, 425)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>183 && touchLocation.x<=207)
    {
        if(touchLocation.y>425 && touchLocation.y<=494)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(183, 425)];
                [drawingPath addLineToPoint:CGPointMake(207, 494)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    
    if(touchLocation.x>207 && touchLocation.x<=233)
    {
        if(touchLocation.y>494 && touchLocation.y<=559)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(207, 494)];
                [drawingPath addLineToPoint:CGPointMake(233, 559)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>233 && touchLocation.x<=256)
    {
        if(touchLocation.y>559 && touchLocation.y<=622)
        {
            if (checkcount[6]==0 && checkcountvar==6)
            {
                [drawingPath moveToPoint:CGPointMake(233, 559)];
                [drawingPath addLineToPoint:CGPointMake(256, 622)];
                checkcountvar++;
                
                
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    if(touchLocation.x>256 && touchLocation.x<=283)
    {
        if(touchLocation.y>552 && touchLocation.y<=622)
        {
            if (checkcount[7]==0 && checkcountvar==7)
            {
                [drawingPath moveToPoint:CGPointMake(256, 622)];
                [drawingPath addLineToPoint:CGPointMake(283, 552)];
                checkcountvar++;
                
                
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    if(touchLocation.x>283 && touchLocation.x<=306)
    {
        if(touchLocation.y>487 && touchLocation.y<=522)
        {
            if (checkcount[8]==0 && checkcountvar==8)
            {
                [drawingPath moveToPoint:CGPointMake(283, 552)];
                [drawingPath addLineToPoint:CGPointMake(306, 487)];
                checkcountvar++;
                
                
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    
    
    
    
    if(touchLocation.x>306 && touchLocation.x<=333)
    {
        if(touchLocation.y>418 && touchLocation.y<=487)
        {
            if (checkcount[9]==0 && checkcountvar==9)
            {
                [drawingPath moveToPoint:CGPointMake(306, 487)];
                [drawingPath addLineToPoint:CGPointMake(333, 418)];
                checkcountvar++;
                
                
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    
    
    if(touchLocation.x>333 && touchLocation.x<=357)
    {
        if(touchLocation.y>352 && touchLocation.y<=418)
        {
            if (checkcount[10]==0 && checkcountvar==10)
            {
                [drawingPath moveToPoint:CGPointMake(333, 418)];
                [drawingPath addLineToPoint:CGPointMake(357, 352)];
                checkcountvar++;
                
                
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    
    
    if(touchLocation.x>357 && touchLocation.x<=383)
    {
        if(touchLocation.y>284 && touchLocation.y<=352)
        {
            if (checkcount[11]==0 && checkcountvar==11)
            {
                [drawingPath moveToPoint:CGPointMake(357, 352)];
                [drawingPath addLineToPoint:CGPointMake(383, 284)];
                checkcountvar++;
                
                
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    
    if(touchLocation.x>383 && touchLocation.x<=407)
    {
        if(touchLocation.y>216 && touchLocation.y<=284)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(383, 284)];
                [drawingPath addLineToPoint:CGPointMake(407, 216)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    
    if(touchLocation.x>407 && touchLocation.x<=435)
    {
        if(touchLocation.y>143 && touchLocation.y<=216)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(407, 216)];
                [drawingPath addLineToPoint:CGPointMake(435, 143)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    

    
    if(checkcountvar==14)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
}
@end
