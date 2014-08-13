//
//  MAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 05/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "MAlphabets.h"

@implementation MAlphabets



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
        
        copyAtoZarray=[AtozObj MPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(70, 120)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
     //NSLog(@"x=%f", touchLocation.x);
    // NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodM:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodM:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>140 && touchLocation.y<=210)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(70, 210)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>210 && touchLocation.y<=290)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(70, 210)];
                [drawingPath addLineToPoint:CGPointMake(70, 290)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>290 && touchLocation.y<=352)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(70, 290)];
                [drawingPath addLineToPoint:CGPointMake(70, 352)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>352 && touchLocation.y<=435)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(70, 352)];
                [drawingPath addLineToPoint:CGPointMake(70, 435)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>435 && touchLocation.y<=514)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(70, 435)];
                [drawingPath addLineToPoint:CGPointMake(70, 514)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>67 && touchLocation.x<=80)
    {
        if(touchLocation.y>514 && touchLocation.y<=593)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(70, 514)];
                [drawingPath addLineToPoint:CGPointMake(70, 620)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    
    
    if(touchLocation.x>70 && touchLocation.x<=145)
    {
        if(touchLocation.y>135 && touchLocation.y<=230)
        {
            if (checkcount[6]==0 && checkcountvar==6)
            {
                [drawingPath moveToPoint:CGPointMake(70, 120)];
                [drawingPath addLineToPoint:CGPointMake(135, 210)];
                checkcountvar++;
                
                
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    if(touchLocation.x>135 && touchLocation.x<=176)
    {
        if(touchLocation.y>220 && touchLocation.y<=275)
        {
            if (checkcount[7]==0 && checkcountvar==7)
            {
                [drawingPath moveToPoint:CGPointMake(135, 210)];
                [drawingPath addLineToPoint:CGPointMake(220, 320)];
                checkcountvar++;
                
                
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    if(touchLocation.x>186 && touchLocation.x<=230)
    {
        if(touchLocation.y>285 && touchLocation.y<=346)
        {
            if (checkcount[8]==0 && checkcountvar==8)
            {
                [drawingPath moveToPoint:CGPointMake(220, 320)];
                [drawingPath addLineToPoint:CGPointMake(258, 372)];
                checkcountvar++;
                
                
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }

    if(touchLocation.x>255 && touchLocation.x<=354)
    {
        if(touchLocation.y>250 && touchLocation.y<=384)
        {
            if (checkcount[9]==0 && checkcountvar==9)
            {
                [drawingPath moveToPoint:CGPointMake(258, 372)];
                [drawingPath addLineToPoint:CGPointMake(346, 250)];
                checkcountvar++;
                
                
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    
    
    if(touchLocation.x>354 && touchLocation.x<=400)
    {
        if(touchLocation.y>191 && touchLocation.y<=250)
        {
            if (checkcount[10]==0 && checkcountvar==10)
            {
                [drawingPath moveToPoint:CGPointMake(346, 250)];
                [drawingPath addLineToPoint:CGPointMake(392, 185)];
                checkcountvar++;
                
                
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    
    
    if(touchLocation.x>400 && touchLocation.x<=430)
    {
        if(touchLocation.y>148 && touchLocation.y<=191)
        {
            if (checkcount[11]==0 && checkcountvar==11)
            {
                [drawingPath moveToPoint:CGPointMake(392, 185)];
                [drawingPath addLineToPoint:CGPointMake(440, 120)];
                checkcountvar++;
                
                
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    
    
    
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>148 && touchLocation.y<=234)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(440, 120)];
                [drawingPath addLineToPoint:CGPointMake(440, 234)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>234 && touchLocation.y<=300)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(440, 234)];
                [drawingPath addLineToPoint:CGPointMake(440, 300)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>300 && touchLocation.y<=372)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(440, 300)];
                [drawingPath addLineToPoint:CGPointMake(440, 372)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>372 && touchLocation.y<=448)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(440, 372)];
                [drawingPath addLineToPoint:CGPointMake(440, 448)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>448 && touchLocation.y<=521)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(440, 448)];
                [drawingPath addLineToPoint:CGPointMake(440, 521)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    
    //12
    
    
    if(touchLocation.x>432 && touchLocation.x<=445)
    {
        if(touchLocation.y>521 && touchLocation.y<=596)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(440, 521)];
                [drawingPath addLineToPoint:CGPointMake(440, 620)];
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
