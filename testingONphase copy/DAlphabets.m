//
//  DAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 24/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "DAlphabets.h"

@implementation DAlphabets

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
        
        copyAtoZarray=[AtozObj DPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(73, 125)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
   // NSLog(@"x=%f", touchLocation.x);
   //  NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodD:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodD:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>140 && touchLocation.y<=210)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(73, 210)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>210 && touchLocation.y<=290)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(73, 210)];
                [drawingPath addLineToPoint:CGPointMake(73, 290)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>290 && touchLocation.y<=352)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(73, 290)];
                [drawingPath addLineToPoint:CGPointMake(73, 352)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>352 && touchLocation.y<=435)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(73, 352)];
                [drawingPath addLineToPoint:CGPointMake(73, 435)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>435 && touchLocation.y<=514)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(73, 435)];
                [drawingPath addLineToPoint:CGPointMake(73, 514)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>70 && touchLocation.x<=80)
    {
        if(touchLocation.y>514 && touchLocation.y<=593)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(73, 514)];
                [drawingPath addLineToPoint:CGPointMake(73, 620)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>70 && touchLocation.x<=146)
    {
        if(touchLocation.y>118 && touchLocation.y<=138)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(73, 124)];
                [drawingPath addLineToPoint:CGPointMake(156, 124)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>146 && touchLocation.x<=187)
    {
        if(touchLocation.y>118 && touchLocation.y<=120)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(156, 124)];
                [drawingPath addLineToPoint:CGPointMake(198, 124)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>187 && touchLocation.x<=275)
    {
        if(touchLocation.y>124 && touchLocation.y<=135)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(198, 124)];
                [drawingPath addLineToPoint:CGPointMake(265, 127)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>275 && touchLocation.x<=337)
    {
        if(touchLocation.y>135 && touchLocation.y<=173)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(265, 127)];
                [drawingPath addLineToPoint:CGPointMake(337, 163)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>337 && touchLocation.x<=390)
    {
        if(touchLocation.y>173 && touchLocation.y<=230)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(337, 163)];
                [drawingPath addLineToPoint:CGPointMake(390, 220)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>337 && touchLocation.x<=390)
    {
        if(touchLocation.y>173 && touchLocation.y<=240)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(337, 163)];
                [drawingPath addLineToPoint:CGPointMake(390, 220)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>390 && touchLocation.x<=420)
    {
        if(touchLocation.y>220 && touchLocation.y<=313)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(390, 220)];
                [drawingPath addLineToPoint:CGPointMake(422, 283)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>420 && touchLocation.x<=428)
    {
        if(touchLocation.y>283 && touchLocation.y<=350)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(422, 283)];
                [drawingPath addLineToPoint:CGPointMake(432, 310)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>425 && touchLocation.x<=440)
    {
        if(touchLocation.y>310 && touchLocation.y<=400)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(432, 310)];
                [drawingPath addLineToPoint:CGPointMake(442, 400)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>395 && touchLocation.x<=423)
    {
        if(touchLocation.y>400 && touchLocation.y<=506)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(442, 400)];
                [drawingPath addLineToPoint:CGPointMake(415, 480)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>354 && touchLocation.x<=400)
    {
        if(touchLocation.y>466 && touchLocation.y<=555)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(415, 480)];
                [drawingPath addLineToPoint:CGPointMake(357, 565)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>292 && touchLocation.x<=354)
    {
        if(touchLocation.y>555 && touchLocation.y<=596)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(357, 565)];
                [drawingPath addLineToPoint:CGPointMake(298, 600)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }
    
    
    
    
    //19
    
    
    if(touchLocation.x>221 && touchLocation.x<=292)
    {
        if(touchLocation.y>596 && touchLocation.y<=616)
        {
            if (checkcountvar==18 && checkcount[18]==0)
            {
                [drawingPath moveToPoint:CGPointMake(298, 600)];
                [drawingPath addLineToPoint:CGPointMake(228, 619)];
                checkcountvar++;
                checkcount[18]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
            }
        }
    }
    
    
    //20
    
    
    if(touchLocation.x>165 && touchLocation.x<=221)
    {
        if(touchLocation.y>615 && touchLocation.y<=618)
        {
            if (checkcountvar==19 && checkcount[19]==0)
            {
                [drawingPath moveToPoint:CGPointMake(228, 619)];
                [drawingPath addLineToPoint:CGPointMake(165, 619)];
                checkcountvar++;
                checkcount[19]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[19]);
            }
        }
    }
    
    
    //21
    
    
    if(touchLocation.x>89 && touchLocation.x<=165)
    {
        if(touchLocation.y>616 && touchLocation.y<=619)
        {
            if (checkcountvar==20 && checkcount[20]==0)
            {
                [drawingPath moveToPoint:CGPointMake(165, 619)];
                [drawingPath addLineToPoint:CGPointMake(89, 619)];
                checkcountvar++;
                checkcount[20]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[20]);
            }
        }
    }

    if(checkcountvar==21)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}

@end
