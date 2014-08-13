//
//  WAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 08/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "WAlphabets.h"

@implementation WAlphabets

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
        
        copyAtoZarray=[AtozObj WPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(77, 140)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
//     NSLog(@"x=%f", touchLocation.x);
//     NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
   [self MethodW:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodW:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>140 && touchLocation.y<=210)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(77, 210)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>210 && touchLocation.y<=290)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(77, 210)];
                [drawingPath addLineToPoint:CGPointMake(77, 290)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>290 && touchLocation.y<=352)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(77, 290)];
                [drawingPath addLineToPoint:CGPointMake(77, 352)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>352 && touchLocation.y<=435)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(77, 352)];
                [drawingPath addLineToPoint:CGPointMake(77, 435)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>435 && touchLocation.y<=514)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(77, 435)];
                [drawingPath addLineToPoint:CGPointMake(77, 514)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>75 && touchLocation.x<=80)
    {
        if(touchLocation.y>514 && touchLocation.y<=593)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(77, 514)];
                [drawingPath addLineToPoint:CGPointMake(77, 610)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    
    
    
    
    if(touchLocation.x>80 && touchLocation.x<=123)
    {
        if(touchLocation.y>531 && touchLocation.y<=610)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(79, 610)];
                [drawingPath addLineToPoint:CGPointMake(123, 531)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>123 && touchLocation.x<=158)
    {
        if(touchLocation.y>462 && touchLocation.y<=531)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(123, 531)];
                [drawingPath addLineToPoint:CGPointMake(158, 462)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>158 && touchLocation.x<=191)
    {
        if(touchLocation.y>399 && touchLocation.y<=462)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(158, 462)];
                [drawingPath addLineToPoint:CGPointMake(191, 399)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>191 && touchLocation.x<=223)
    {
        if(touchLocation.y>332 && touchLocation.y<=399)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(191, 399)];
                [drawingPath addLineToPoint:CGPointMake(223, 332)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>223 && touchLocation.x<=257)
    {
        if(touchLocation.y>264 && touchLocation.y<=332)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(223, 332)];
                [drawingPath addLineToPoint:CGPointMake(257, 264)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    
    if(touchLocation.x>257 && touchLocation.x<=285)
    {
        if(touchLocation.y>320 && touchLocation.y<=388)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(257, 264)];
                [drawingPath addLineToPoint:CGPointMake(285, 320)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    //13
    
    if(touchLocation.x>280 && touchLocation.x<=325)
    {
        if(touchLocation.y>388 && touchLocation.y<=450)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(285,320)];
                [drawingPath addLineToPoint:CGPointMake(318,388)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>318 && touchLocation.x<=350)
    {
        if(touchLocation.y>413 && touchLocation.y<=450)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(318, 388)];
                [drawingPath addLineToPoint:CGPointMake(350, 450)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>350 && touchLocation.x<=382)
    {
        if(touchLocation.y>450 && touchLocation.y<=513)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(350, 450)];
                [drawingPath addLineToPoint:CGPointMake(382, 513)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    //16
    
    
    if(touchLocation.x>382 && touchLocation.x<=435)
    {
        if(touchLocation.y>513 && touchLocation.y<=610)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(382, 513)];
                [drawingPath addLineToPoint:CGPointMake(433, 610)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>529 && touchLocation.y<=610)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 610)];
                [drawingPath addLineToPoint:CGPointMake(435, 529)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>455 && touchLocation.y<=529)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 529)];
                [drawingPath addLineToPoint:CGPointMake(435, 455)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }
    
    
    
    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>385 && touchLocation.y<=455)
        {
            if (checkcountvar==18 && checkcount[18]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 455)];
                [drawingPath addLineToPoint:CGPointMake(435, 385)];
                checkcountvar++;
                checkcount[18]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
            }
        }
    }
    
    
    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>311 && touchLocation.y<=385)
        {
            if (checkcountvar==19 && checkcount[19]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 385)];
                [drawingPath addLineToPoint:CGPointMake(435, 311)];
                checkcountvar++;
                checkcount[19]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[19]);
            }
        }
    }
    
    
    
    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>240 && touchLocation.y<=311)
        {
            if (checkcountvar==20 && checkcount[20]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 311)];
                [drawingPath addLineToPoint:CGPointMake(435, 240)];
                checkcountvar++;
                checkcount[20]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[20]);
            }
        }
    }

    if(touchLocation.x>430 && touchLocation.x<=436)
    {
        if(touchLocation.y>165 && touchLocation.y<=240)
        {
            if (checkcountvar==21 && checkcount[21]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 240)];
                [drawingPath addLineToPoint:CGPointMake(435, 140)];
                checkcountvar++;
                checkcount[21]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[21]);
            }
        }
    }
    

    
    if(checkcountvar==22)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}

@end
