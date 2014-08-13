//
//  EAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 05/08/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "EAlphabets.h"

@implementation EAlphabets

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
        
        copyAtoZarray=[AtozObj EPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(70, 121)];
    
    
    
    
    
    
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
   //  NSLog(@"x=%f", touchLocation.x);
  // NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodE:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodE:(CGPoint)TouchLocation
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
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>67 && touchLocation.x<=136)
    {
        if(touchLocation.y>118 && touchLocation.y<=140)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(70, 121)];
                [drawingPath addLineToPoint:CGPointMake(136, 121)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>136 && touchLocation.x<=209)
    {
        if(touchLocation.y>118 && touchLocation.y<=140)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(136, 121)];
                [drawingPath addLineToPoint:CGPointMake(209, 121)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>209 && touchLocation.x<=281)
    {
        if(touchLocation.y>118 && touchLocation.y<=140)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(209, 121)];
                [drawingPath addLineToPoint:CGPointMake(281, 121)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>281 && touchLocation.x<=361)
    {
        if(touchLocation.y>118 && touchLocation.y<=140)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(281, 121)];
                [drawingPath addLineToPoint:CGPointMake(361, 121)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>361 && touchLocation.x<=439)
    {
        if(touchLocation.y>118 && touchLocation.y<=140)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(361, 121)];
                [drawingPath addLineToPoint:CGPointMake(439, 121)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>67 && touchLocation.x<=157)
    {
        if(touchLocation.y>370 && touchLocation.y<=375)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(81,370)];
                [drawingPath addLineToPoint:CGPointMake(157,370)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>157 && touchLocation.x<=233)
    {
        if(touchLocation.y>370 && touchLocation.y<=375)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(157, 370)];
                [drawingPath addLineToPoint:CGPointMake(233, 370)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>233 && touchLocation.x<=322)
    {
        if(touchLocation.y>370 && touchLocation.y<=375)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(233, 370)];
                [drawingPath addLineToPoint:CGPointMake(322, 370)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>77 && touchLocation.x<=120)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(77, 624)];
                [drawingPath addLineToPoint:CGPointMake(120, 624)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>120 && touchLocation.x<=187)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(120, 624)];
                [drawingPath addLineToPoint:CGPointMake(187, 624)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>187 && touchLocation.x<=262)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(187, 624)];
                [drawingPath addLineToPoint:CGPointMake(262, 624)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>262 && touchLocation.x<=338)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(262, 624)];
                [drawingPath addLineToPoint:CGPointMake(338, 624)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }
    
    
    
    
    //19
    
    
    if(touchLocation.x>338 && touchLocation.x<=402)
    {
        if(touchLocation.y>620 && touchLocation.y<=624)
        {
            if (checkcountvar==18 && checkcount[18]==0)
            {
                [drawingPath moveToPoint:CGPointMake(338, 624)];
                [drawingPath addLineToPoint:CGPointMake(439, 624)];
                checkcountvar++;
                checkcount[18]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
            }
        }
    }
    
    
  
    
    
    
    if(checkcountvar==19)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}

@end
