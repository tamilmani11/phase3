//
//  ZAlphabet.m
//  writing
//
//  Created by BSA univ 8 on 07/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "ZAlphabet.h"


@implementation ZAlphabet
{
    ViewController *mainVc;
}

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
    mainView=[[ViewController alloc]init];
    AtozObj=[[AtoZPointsArray alloc]init];
    if (checkcountvar==0)
    {
        
        copyAtoZarray=[AtozObj ZPointsArray];
    }
    
}

#pragma mark - Drawing Methods

- (void)drawRect:(CGRect)rect
{
    //Create the point
    
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
    
    [drawingPath moveToPoint:CGPointMake(80, 140)];

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
//   NSLog(@"x=%f", touchLocation.x);
//    NSLog(@"y=%f", touchLocation.y);
    
        [self MethodZ:touchLocation];
      [self setNeedsDisplay];
}




-(void)MethodZ:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    
    //start from top and trun towords left side
    
    
    //1
    if(touchLocation.x>80 && touchLocation.x<=168)
    {
        if(touchLocation.y>140 && touchLocation.y<=145)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                //[drawingPath moveToPoint:CGPointMake(101, 145)];
                [drawingPath addLineToPoint:CGPointMake(168, 140)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>168 && touchLocation.x<=235)
    {
        if(touchLocation.y>140 && touchLocation.y<=145)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(168, 140)];
                [drawingPath addLineToPoint:CGPointMake(235,140)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>235 && touchLocation.x<=314)
    {
        if(touchLocation.y>140 && touchLocation.y<=145)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(235, 140)];
                [drawingPath addLineToPoint:CGPointMake(314, 140)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>314 && touchLocation.x<=378)
    {
        if(touchLocation.y>140 && touchLocation.y<=145)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(378, 140)];
                [drawingPath addLineToPoint:CGPointMake(145, 140)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>370 && touchLocation.x<=438)
    {
        if(touchLocation.y>135 && touchLocation.y<=145)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(378, 140)];
                [drawingPath addLineToPoint:CGPointMake(438, 140)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>387 && touchLocation.x<=438)
    {
        if(touchLocation.y>137 && touchLocation.y<=145)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(438, 140)];
                [drawingPath addLineToPoint:CGPointMake(385, 212)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>343 && touchLocation.x<=387)
    {
        if(touchLocation.y>212 && touchLocation.y<=332)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(385, 212)];
                [drawingPath addLineToPoint:CGPointMake(340,269)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>300 && touchLocation.x<=343)
    {
        if(touchLocation.y>269 && touchLocation.y<=332)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(340, 269)];
                [drawingPath addLineToPoint:CGPointMake(290,332)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>257 && touchLocation.x<=300)
    {
        if(touchLocation.y>332 && touchLocation.y<=391)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(290, 332)];
                [drawingPath addLineToPoint:CGPointMake(247,391)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>215 && touchLocation.x<=260)
    {
        if(touchLocation.y>391 && touchLocation.y<=438)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(247, 391)];
                [drawingPath addLineToPoint:CGPointMake(213,438)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>165 && touchLocation.x<=215)
    {
        if(touchLocation.y>438 && touchLocation.y<=503)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(213, 438)];
                [drawingPath addLineToPoint:CGPointMake(163, 503)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>126 && touchLocation.x<=165)
    {
        if(touchLocation.y>503 && touchLocation.y<=560)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(163, 503)];
                [drawingPath addLineToPoint:CGPointMake(124,560)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>83 && touchLocation.x<=126)
    {
        if(touchLocation.y>560 && touchLocation.y<=618)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(124, 560)];
                [drawingPath addLineToPoint:CGPointMake(81, 620)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>83 && touchLocation.x<=148)
    {
        if(touchLocation.y>618 && touchLocation.y<=628)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(81, 620)];
                [drawingPath addLineToPoint:CGPointMake(148, 620)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>140 && touchLocation.x<=215)
    {
        if(touchLocation.y>620 && touchLocation.y<=628)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(148, 620)];
                [drawingPath addLineToPoint:CGPointMake(215,620)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>215 && touchLocation.x<=287)
    {
        if(touchLocation.y>620 && touchLocation.y<=627)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(215, 620)];
                [drawingPath addLineToPoint:CGPointMake(287, 620)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>287 && touchLocation.x<=370)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(287, 620)];
                [drawingPath addLineToPoint:CGPointMake(370,620)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    
    //18
    
    
    if(touchLocation.x>370 && touchLocation.x<=427)
    {
        if(touchLocation.y>620 && touchLocation.y<=626)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(370, 620)];
                [drawingPath addLineToPoint:CGPointMake(435, 620)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }

    
    
    if(checkcountvar==18)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
    }
        
    }
@end
