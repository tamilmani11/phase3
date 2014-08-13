//
//  JAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 05/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "JAlphabets.h"

@implementation JAlphabets

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
        
        copyAtoZarray=[AtozObj JPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(200, 140)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
    // NSLog(@"x=%f", touchLocation.x);
   //   NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodJ:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodJ:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    
    if(touchLocation.x>200 && touchLocation.x<=279)
    {
        if(touchLocation.y>137 && touchLocation.y<=140)
        {
            if (checkcountvar==0 && checkcount[0]==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(279, 140)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
            }
        }
    }
    
    
    
    
    //2
    
    if(touchLocation.x>279 && touchLocation.x<=351)
    {
        if(touchLocation.y>137 && touchLocation.y<=140)
        {
            if (checkcountvar==1 && checkcount[1]==0)
            {
                [drawingPath moveToPoint:CGPointMake(279, 140)];
                [drawingPath addLineToPoint:CGPointMake(351, 140)];
                checkcountvar++;
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    
    //3
    
    
    if(touchLocation.x>352 && touchLocation.x<=434)
    {
        if(touchLocation.y>137 && touchLocation.y<=140)
        {
            if (checkcountvar==2 && checkcount[2]==0)
            {
                [drawingPath moveToPoint:CGPointMake(351, 140)];
                [drawingPath addLineToPoint:CGPointMake(434, 140)];
                checkcountvar++;
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
        }
    }
    

    
    //4
    if(touchLocation.x>313 && touchLocation.x<=317)
    {
        if(touchLocation.y>143 && touchLocation.y<=210)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(317, 143)];
                [drawingPath addLineToPoint:CGPointMake(317, 210)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
       if(touchLocation.x>313 && touchLocation.x<=317)
    {
        if(touchLocation.y>210 && touchLocation.y<=290)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(317, 210)];
                [drawingPath addLineToPoint:CGPointMake(317, 290)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
      if(touchLocation.x>313 && touchLocation.x<=317)
    {
        if(touchLocation.y>290 && touchLocation.y<=302)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(317, 290)];
                [drawingPath addLineToPoint:CGPointMake(317, 302)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    
    
    //8
    
       if(touchLocation.x>313 && touchLocation.x<=317)
       {
        if(touchLocation.y>302 && touchLocation.y<=435)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                [drawingPath moveToPoint:CGPointMake(317, 302)];
                [drawingPath addLineToPoint:CGPointMake(317, 435)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    
    
    //9
    
       if(touchLocation.x>313 && touchLocation.x<=317)
    {
        if(touchLocation.y>435 && touchLocation.y<=514)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(317, 435)];
                [drawingPath addLineToPoint:CGPointMake(317, 514)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>280 && touchLocation.x<=313)
    {
        if(touchLocation.y>574 && touchLocation.y<=584)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(317, 514)];
                [drawingPath addLineToPoint:CGPointMake(289, 584)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    if(touchLocation.x>240 && touchLocation.x<=289)
    {
        if(touchLocation.y>584 && touchLocation.y<=617)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(289, 584)];
                [drawingPath addLineToPoint:CGPointMake(240, 617)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>171 && touchLocation.x<=240)
    {
        if(touchLocation.y>617 && touchLocation.y<=621)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                [drawingPath moveToPoint:CGPointMake(240, 617)];
                [drawingPath addLineToPoint:CGPointMake(171, 621)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>108 && touchLocation.x<=171)
    {
        if(touchLocation.y>585 && touchLocation.y<=621)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(171, 621)];
                [drawingPath addLineToPoint:CGPointMake(108, 585)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    if(touchLocation.x>78 && touchLocation.x<=108)
    {
        if(touchLocation.y>522 && touchLocation.y<=585)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(108, 585)];
                [drawingPath addLineToPoint:CGPointMake(78, 522)];
                
                [drawingPath moveToPoint:CGPointMake(78, 522)];
                [drawingPath addLineToPoint:CGPointMake(78, 498)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    if(checkcountvar==13)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}




@end
