
//
//  OAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 07/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "OAlphabets.h"

@implementation OAlphabets
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
        
        copyAtoZarray=[AtozObj OPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(225, 144)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
   // NSLog(@"x=%f", touchLocation.x);
   //  NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
   [self MethodO:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodO:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>154 && touchLocation.x<=220)
    {
        if(touchLocation.y>140 && touchLocation.y<=175)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(156, 175)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>111 && touchLocation.x<=154)
    {
        if(touchLocation.y>175 && touchLocation.y<=230)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(156, 175)];
                [drawingPath addLineToPoint:CGPointMake(113, 230)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>81 && touchLocation.x<=111)
    {
        if(touchLocation.y>230 && touchLocation.y<=302)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(113, 230)];
                [drawingPath addLineToPoint:CGPointMake(83, 302)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>72 && touchLocation.x<=81)
    {
        if(touchLocation.y>302 && touchLocation.y<=379)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(83, 302)];
                [drawingPath addLineToPoint:CGPointMake(73, 379)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>72 && touchLocation.x<=78)
    {
        if(touchLocation.y>379 && touchLocation.y<=446)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(73, 379)];
                [drawingPath addLineToPoint:CGPointMake(80, 446)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>78 && touchLocation.x<=101)
    {
        if(touchLocation.y>446 && touchLocation.y<=517)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(80, 446)];
                [drawingPath addLineToPoint:CGPointMake(104, 517)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>101 && touchLocation.x<=148)
    {
        if(touchLocation.y>517 && touchLocation.y<=573)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(104, 517)];
                [drawingPath addLineToPoint:CGPointMake(148, 573)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>148 && touchLocation.x<=206)
    {
        if(touchLocation.y>573 && touchLocation.y<=613)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(148, 573)];
                [drawingPath addLineToPoint:CGPointMake(206, 615)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>206 && touchLocation.x<=274)
    {
        if(touchLocation.y>613 && touchLocation.y<=618)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(206, 615)];
                [drawingPath addLineToPoint:CGPointMake(280, 618)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>274 && touchLocation.x<=341)
    {
        if(touchLocation.y>595 && touchLocation.y<=618)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(280, 618)];
                [drawingPath addLineToPoint:CGPointMake(341, 595)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>341 && touchLocation.x<=385)
    {
        if(touchLocation.y>532 && touchLocation.y<=584)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(341, 595)];
                [drawingPath addLineToPoint:CGPointMake(392, 539)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>385 && touchLocation.x<=415)
    {
        if(touchLocation.y>470 && touchLocation.y<=539)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(392, 539)];
                [drawingPath addLineToPoint:CGPointMake(423, 476)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>415 && touchLocation.x<=430)
    {
        if(touchLocation.y>381 && touchLocation.y<=476)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(423, 476)];
                [drawingPath addLineToPoint:CGPointMake(436, 381)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>420 && touchLocation.x<=430)
    {
        if(touchLocation.y>290 && touchLocation.y<=381)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(436, 381)];
                [drawingPath addLineToPoint:CGPointMake(429, 299)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>395 && touchLocation.x<=420)
    {
        if(touchLocation.y>234 && touchLocation.y<=299)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(429, 299)];
                [drawingPath addLineToPoint:CGPointMake(401, 236)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>346 && touchLocation.x<=395)
    {
        if(touchLocation.y>170 && touchLocation.y<=236)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(401, 236)];
                [drawingPath addLineToPoint:CGPointMake(352, 178)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>290 && touchLocation.x<=346)
    {
        if(touchLocation.y>140 && touchLocation.y<=178)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(352, 178)];
                [drawingPath addLineToPoint:CGPointMake(293, 147)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>220 && touchLocation.x<=290)
    {
        if(touchLocation.y>140 && touchLocation.y<=147)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(293, 147)];
                [drawingPath addLineToPoint:CGPointMake(225, 144)];
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
