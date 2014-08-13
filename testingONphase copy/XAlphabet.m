//
//  XAlphabet.m
//  writing
//
//  Created by BSA univ 8 on 08/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "XAlphabet.h"

@implementation XAlphabet
{
    ViewController *mainVc;
}

static int checkcountvar;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        
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
        
        copyAtoZarray=[AtozObj XPointsArray];
    }
    
}

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
    
    [drawingPath moveToPoint:CGPointMake(78, 142)];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
   // NSLog(@"x=%f", touchLocation.x);
   // NSLog(@"y=%f", touchLocation.y);
    
    [self MethodX:touchLocation];
    [self setNeedsDisplay];
}


-(void)MethodX:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    
    //start from left slanting
    
    
    //1
    if(touchLocation.x>78 && touchLocation.x<=124)
    {
        if(touchLocation.y>142 && touchLocation.y<=206)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                //[drawingPath moveToPoint:CGPointMake(78, 142)];
                [drawingPath addLineToPoint:CGPointMake(124, 206)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>124 && touchLocation.x<=170)
    {
        if(touchLocation.y>206 && touchLocation.y<=265)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(124, 206)];
                [drawingPath addLineToPoint:CGPointMake(170,265)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>170 && touchLocation.x<=213)
    {
        if(touchLocation.y>265 && touchLocation.y<=325)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(170, 265)];
                [drawingPath addLineToPoint:CGPointMake(213, 325)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>213 && touchLocation.x<=256)
    {
        if(touchLocation.y>325 && touchLocation.y<=383)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(213, 325)];
                [drawingPath addLineToPoint:CGPointMake(256, 383)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>256 && touchLocation.x<=300)
    {
        if(touchLocation.y>383 && touchLocation.y<=441)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(256, 383)];
                [drawingPath addLineToPoint:CGPointMake(300, 441)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>322 && touchLocation.x<=360)
    {
        if(touchLocation.y>468 && touchLocation.y<=527)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(300, 441)];
                [drawingPath addLineToPoint:CGPointMake(342, 498)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    
    //7
    
    if(touchLocation.x>342 && touchLocation.x<=404)
    {
        if(touchLocation.y>527 && touchLocation.y<=581)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(342, 498)];
                [drawingPath addLineToPoint:CGPointMake(387,557)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    
    //8
    
    if(touchLocation.x>387 && touchLocation.x<=429)
    {
        if(touchLocation.y>557 && touchLocation.y<=615)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(387, 557)];
                [drawingPath addLineToPoint:CGPointMake(434,620)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    
    
    //start from right slanting
    
    
    

    
    //9
    
    
    if(touchLocation.x>385 && touchLocation.x<=426)
    {
        if(touchLocation.y>156 && touchLocation.y<=209)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(435, 142)];
                [drawingPath addLineToPoint:CGPointMake(385,209)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    //10
    
    
    if(touchLocation.x>344 && touchLocation.x<=385)
    {
        if(touchLocation.y>209 && touchLocation.y<=267)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(385, 209)];
                [drawingPath addLineToPoint:CGPointMake(344, 267)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    
    //11
    
    if(touchLocation.x>298 && touchLocation.x<=344)
    {
        if(touchLocation.y>267 && touchLocation.y<=329)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                [drawingPath moveToPoint:CGPointMake(344, 267)];
                [drawingPath addLineToPoint:CGPointMake(298,329)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    if(touchLocation.x>256 && touchLocation.x<=298)
    {
        if(touchLocation.y>329 && touchLocation.y<=383)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(298, 329)];
                [drawingPath addLineToPoint:CGPointMake(256, 383)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>241 && touchLocation.x<=256)
    {
        if(touchLocation.y>383 && touchLocation.y<=443)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(256, 383)];
                [drawingPath addLineToPoint:CGPointMake(208, 450)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>169 && touchLocation.x<=241)
    {
        if(touchLocation.y>443 && touchLocation.y<=503)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(208,450
                                                     )];
                [drawingPath addLineToPoint:CGPointMake(169,503)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    
    //15
    
    
    if(touchLocation.x>125 && touchLocation.x<=169)
    {
        if(touchLocation.y>503 && touchLocation.y<=560)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(169, 503)];
                [drawingPath addLineToPoint:CGPointMake(125, 560)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    //16
    
    
    if(touchLocation.x>80 && touchLocation.x<=125)
    {
        if(touchLocation.y>560 && touchLocation.y<=621)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(125, 560)];
                [drawingPath addLineToPoint:CGPointMake(80,621)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    
    
    
    if(checkcountvar==16)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
    }
    
}






/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
