
//
//  SAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 07/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "SAlphabets.h"

@implementation SAlphabets

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
    
    AtozObj=[[AtoZPointsArray alloc]init];
    if (checkcountvar==0)
    {
        
        copyAtoZarray=[AtozObj SPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(434, 240)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
    // NSLog(@"x=%f", touchLocation.x);
    // NSLog(@"y=%f", touchLocation.y);
       [self MethodS:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodS:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>400 && touchLocation.x<=432)
    {
        if(touchLocation.y>177 && touchLocation.y<=240)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(404, 179)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>334 && touchLocation.x<=400)
    {
        if(touchLocation.y>145 && touchLocation.y<=177)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(404, 179)];
                [drawingPath addLineToPoint:CGPointMake(338, 140)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>240 && touchLocation.x<=334)
    {
        if(touchLocation.y>140 && touchLocation.y<=145)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(338, 140)];
                [drawingPath addLineToPoint:CGPointMake(240, 141)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>172 && touchLocation.x<=240)
    {
        if(touchLocation.y>143 && touchLocation.y<=145)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(240, 141)];
                [drawingPath addLineToPoint:CGPointMake(172, 143)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>121 && touchLocation.x<=171)
    {
        if(touchLocation.y>143 && touchLocation.y<=171)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(172, 143)];
                [drawingPath addLineToPoint:CGPointMake(121, 171)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>84 && touchLocation.x<=121)
    {
        if(touchLocation.y>171 && touchLocation.y<=231)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(121, 171)];
                [drawingPath addLineToPoint:CGPointMake(81, 231)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>81 && touchLocation.x<=84)
    {
        if(touchLocation.y>231 && touchLocation.y<=293)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(81, 231)];
                [drawingPath addLineToPoint:CGPointMake(81, 293)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>81 && touchLocation.x<=117)
    {
        if(touchLocation.y>293 && touchLocation.y<=353)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(81, 293)];
                [drawingPath addLineToPoint:CGPointMake(117, 353)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>117 && touchLocation.x<=186)
    {
        if(touchLocation.y>353 && touchLocation.y<=385)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(117, 353)];
                [drawingPath addLineToPoint:CGPointMake(186, 385)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>186 && touchLocation.x<=276)
    {
        if(touchLocation.y>380 && touchLocation.y<=385)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(186, 385)];
                [drawingPath addLineToPoint:CGPointMake(276, 384)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>276 && touchLocation.x<=339)
    {
        if(touchLocation.y>380 && touchLocation.y<=384)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(276, 384)];
                [drawingPath addLineToPoint:CGPointMake(339, 384)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>339 && touchLocation.x<=404)
    {
        if(touchLocation.y>384 && touchLocation.y<=417)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(339, 384)];
                [drawingPath addLineToPoint:CGPointMake(404, 417)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>404 && touchLocation.x<=430)
    {
        if(touchLocation.y>417 && touchLocation.y<=473)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(404, 417)];
                [drawingPath addLineToPoint:CGPointMake(430, 473)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>430 && touchLocation.x<=435)
    {
        if(touchLocation.y>473 && touchLocation.y<=533)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(430, 473)];
                [drawingPath addLineToPoint:CGPointMake(431, 533)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>393 && touchLocation.x<=431)
    {
        if(touchLocation.y>533 && touchLocation.y<=595)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(431, 533)];
                [drawingPath addLineToPoint:CGPointMake(393, 595)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>334 && touchLocation.x<=393)
    {
        if(touchLocation.y>595 && touchLocation.y<=623)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(393, 595)];
                [drawingPath addLineToPoint:CGPointMake(334, 623)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>236 && touchLocation.x<=334)
    {
        if(touchLocation.y>623 && touchLocation.y<=626)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(334, 623)];
                [drawingPath addLineToPoint:CGPointMake(236, 626)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>171 && touchLocation.x<=236)
    {
        if(touchLocation.y>623 && touchLocation.y<=626)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(236, 626)];
                [drawingPath addLineToPoint:CGPointMake(171, 623)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }
    
    if(touchLocation.x>118 && touchLocation.x<=171)
    {
        if(touchLocation.y>595 && touchLocation.y<=623)
        {
            if (checkcountvar==18 && checkcount[18]==0)
            {
                [drawingPath moveToPoint:CGPointMake(171, 623)];
                [drawingPath addLineToPoint:CGPointMake(118, 595)];
                checkcountvar++;
                checkcount[18]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
            }
        }
    }
    
    
    if(touchLocation.x>81 && touchLocation.x<=118)
    {
        if(touchLocation.y>530 && touchLocation.y<=595)
        {
            if (checkcountvar==19 && checkcount[19]==0)
            {
                [drawingPath moveToPoint:CGPointMake(118, 595)];
                [drawingPath addLineToPoint:CGPointMake(75, 520)];
                checkcountvar++;
                checkcount[19]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[19]);
            }
        }
    }
    
    
    if(checkcountvar==20)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}


@end
