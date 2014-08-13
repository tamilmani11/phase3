//
//  BAlphabets.m
//  testingONphase
//
//  Created by BSA univ 9 on 18/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import "BAlphabets.h"

@implementation BAlphabets
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
        
        copyAtoZarray=[AtozObj BPointsArray];
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
    
    
  //NSLog(@"x=%f", touchLocation.x);
// NSLog(@"y=%f", touchLocation.y);
    // setBool=YES;
    // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodB:touchLocation];
    [self setNeedsDisplay];
}




-(void)MethodB:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>60 && touchLocation.x<=78)
    {
        if(touchLocation.y>130 && touchLocation.y<=235)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(77, 235)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>65 && touchLocation.x<=78)
    {
        if(touchLocation.y>235 && touchLocation.y<=310)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                 [drawingPath moveToPoint:CGPointMake(77, 235)];
                [drawingPath addLineToPoint:CGPointMake(77, 310)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>65 && touchLocation.x<=78)
    {
        if(touchLocation.y>330 && touchLocation.y<=390)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                 [drawingPath moveToPoint:CGPointMake(77, 310)];
                [drawingPath addLineToPoint:CGPointMake(77, 390)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>65 && touchLocation.x<=78)
    {
        if(touchLocation.y>390 && touchLocation.y<=455)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(77, 390)];
                [drawingPath addLineToPoint:CGPointMake(77, 455)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>68 && touchLocation.x<=78)
    {
        if(touchLocation.y>455 && touchLocation.y<=535)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(77, 455)];
                [drawingPath addLineToPoint:CGPointMake(77, 535)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>68 && touchLocation.x<=78)
    {
        if(touchLocation.y>535 && touchLocation.y<=615)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(77, 535)];
                [drawingPath addLineToPoint:CGPointMake(77, 618)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    //start from top and trun towords first bend
    //7
    
    if(touchLocation.x>65 && touchLocation.x<=114)
    {
        if(touchLocation.y>124 && touchLocation.y<=170)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                 [drawingPath moveToPoint:CGPointMake(77, 140)];
                [drawingPath addLineToPoint:CGPointMake(114, 140)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
    
    //8
    
    if(touchLocation.x>110 && touchLocation.x<=184)
    {
        if(touchLocation.y>120 && touchLocation.y<=140)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(114, 140)];
                [drawingPath addLineToPoint:CGPointMake(184, 140)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>182 && touchLocation.x<=257)
    {
        if(touchLocation.y>120 && touchLocation.y<=140)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(184, 140)];
                [drawingPath addLineToPoint:CGPointMake(257, 140)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>255 && touchLocation.x<=327)
    {
        if(touchLocation.y>120 && touchLocation.y<=140)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(257, 140)];
                [drawingPath addLineToPoint:CGPointMake(327, 140)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>337 && touchLocation.x<=395)
    {
        if(touchLocation.y>122 && touchLocation.y<=152)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
              
                [drawingPath moveToPoint:CGPointMake(327, 140)];
                [drawingPath addLineToPoint:CGPointMake(380, 154)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>393 && touchLocation.x<=433)
    {
        if(touchLocation.y>152 && touchLocation.y<=213)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(380, 154)];
                [drawingPath addLineToPoint:CGPointMake(423, 213)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>430 && touchLocation.x<=435)
    {
        if(touchLocation.y>205 && touchLocation.y<=286)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(424, 213)];
                [drawingPath addLineToPoint:CGPointMake(430, 286)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>385 && touchLocation.x<=427)
    {
        if(touchLocation.y>285 && touchLocation.y<=350)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(431, 287)];
                [drawingPath addLineToPoint:CGPointMake(394, 350)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //15
    if(touchLocation.x>327 && touchLocation.x<=385)
    {
        if(touchLocation.y>347 && touchLocation.y<=374)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(395, 351)];
                [drawingPath addLineToPoint:CGPointMake(335, 380)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    
    
    //16
    
    
    if(touchLocation.x>238 && touchLocation.x<=327)
    {
        if(touchLocation.y>370 && touchLocation.y<=380)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(335, 380)];
                [drawingPath addLineToPoint:CGPointMake(238, 380)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
        }
    }
    
    //17
    
    
    if(touchLocation.x>164 && touchLocation.x<=238)
    {
        if(touchLocation.y>370 && touchLocation.y<=380)
        {
            if (checkcountvar==16 && checkcount[16]==0)
            {
                [drawingPath moveToPoint:CGPointMake(238, 380)];
                [drawingPath addLineToPoint:CGPointMake(164, 380)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
            }
        }
    }
    
    //18
    
    
    if(touchLocation.x>82 && touchLocation.x<=164)
    {
        if(touchLocation.y>370 && touchLocation.y<=380)
        {
            if (checkcountvar==17 && checkcount[17]==0)
            {
                [drawingPath moveToPoint:CGPointMake(164, 380)];
                [drawingPath addLineToPoint:CGPointMake(82, 380)];
                checkcountvar++;
                checkcount[17]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
            }
        }
    }
    
    
    //start from top and trun towords second bend
    
    //19
    
    
    if(touchLocation.x>80 && touchLocation.x<=319)
    {
        if(touchLocation.y>370 && touchLocation.y<=380)
        {
            if (checkcountvar==18 && checkcount[18]==0)
            {
                [drawingPath moveToPoint:CGPointMake(82, 380)];
                [drawingPath addLineToPoint:CGPointMake(312, 380)];
                checkcountvar++;
                checkcount[18]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
            }
        }
    }
    
    
    //20
    
    
    if(touchLocation.x>319 && touchLocation.x<=400)
    {
        if(touchLocation.y>376 && touchLocation.y<=403)
        {
            if (checkcountvar==19 && checkcount[19]==0)
            {
                [drawingPath moveToPoint:CGPointMake(312, 380)];
                [drawingPath addLineToPoint:CGPointMake(394, 403)];
                checkcountvar++;
                checkcount[19]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[19]);
            }
        }
    }
    
    
    //21
    
    
    if(touchLocation.x>400 && touchLocation.x<=434)
    {
        if(touchLocation.y>403 && touchLocation.y<=469)
        {
            if (checkcountvar==20 && checkcount[20]==0)
            {
                [drawingPath moveToPoint:CGPointMake(394, 403)];
                [drawingPath addLineToPoint:CGPointMake(434, 469)];
                checkcountvar++;
                checkcount[20]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[20]);
            }
        }
    }
    //22
    
    
    if(touchLocation.x>426 && touchLocation.x<=434)
    {
        if(touchLocation.y>469 && touchLocation.y<=542)
        {
            if (checkcountvar==21 && checkcount[21]==0)
            {
                [drawingPath moveToPoint:CGPointMake(434, 469)];
                [drawingPath addLineToPoint:CGPointMake(428, 542)];
                checkcountvar++;
                checkcount[21]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[21]);
            }
        }
    }
    
    //23
    
    
    if(touchLocation.x>370 && touchLocation.x<=435)
    {
        if(touchLocation.y>542 && touchLocation.y<=605)
        {
            if (checkcountvar==22 && checkcount[22]==0)
            {
                [drawingPath moveToPoint:CGPointMake(429, 543)];
                [drawingPath addLineToPoint:CGPointMake(376, 611)];
                checkcountvar++;
                checkcount[22]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[22]);
            }
        }
    }
    
    
    
    //24
    
    
    if(touchLocation.x>295 && touchLocation.x<=380)
    {
        if(touchLocation.y>605 && touchLocation.y<=619)
        {
            if (checkcountvar==23 && checkcount[23]==0)
            {
                [drawingPath moveToPoint:CGPointMake(376, 611)];
                [drawingPath addLineToPoint:CGPointMake(326, 619)];
                checkcountvar++;
                checkcount[23]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[23]);
            }
        }
    }
    
    //25
    
    
    if(touchLocation.x>230 && touchLocation.x<=300)
    {
        if(touchLocation.y>605 && touchLocation.y<=619)
        {
            if (checkcountvar==24 && checkcount[24]==0)
            {
                [drawingPath moveToPoint:CGPointMake(325, 619)];
                [drawingPath addLineToPoint:CGPointMake(230, 619)];
                checkcountvar++;
                checkcount[24]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[24]);
            }
        }
    }

    //26
    
    
    if(touchLocation.x>155 && touchLocation.x<=235)
    {
        if(touchLocation.y>615 && touchLocation.y<=619)
        {
            if (checkcountvar==25 && checkcount[25]==0)
            {
                [drawingPath moveToPoint:CGPointMake(230, 619)];
                [drawingPath addLineToPoint:CGPointMake(159, 619)];
                checkcountvar++;
                checkcount[25]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[25]);
            }
        }
    }
    
    //27
    
    
    if(touchLocation.x>80 && touchLocation.x<=159)
    {
        if(touchLocation.y>615 && touchLocation.y<=619)
        {
            if (checkcountvar==26 && checkcount[26]==0)
            {
                [drawingPath moveToPoint:CGPointMake(159, 619)];
                [drawingPath addLineToPoint:CGPointMake(77, 619)];
                checkcountvar++;
                checkcount[26]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[26]);
            }
        }
    }
    if(checkcountvar==27)
    {
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
        
        
    }
    
    
}


@end
