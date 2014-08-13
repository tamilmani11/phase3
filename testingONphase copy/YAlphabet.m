//
//  YAlphabet.m
//  writing
//
//  Created by BSA univ 8 on 08/08/14.
//  Copyright (c) 2014 Hispark. All rights reserved.
//

#import "YAlphabet.h"

@implementation YAlphabet
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
        
        copyAtoZarray=[AtozObj YPointsArray];
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
    
    [drawingPath moveToPoint:CGPointMake(79, 142)];
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
    
    
     NSLog(@"x=%f", touchLocation.x);
     NSLog(@"y=%f", touchLocation.y);
    
    [self MethodY:touchLocation];
    [self setNeedsDisplay];
}

-(void)MethodY:(CGPoint)TouchLocation
{
    
    CGPoint touchLocation =TouchLocation;
    
    //start from left slanting
    
    
    //1
    if(touchLocation.x>84 && touchLocation.x<=130)
    {
        if(touchLocation.y>147 && touchLocation.y<=211)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                //[drawingPath moveToPoint:CGPointMake(84, 147)];
                [drawingPath addLineToPoint:CGPointMake(130, 211)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>130 && touchLocation.x<=173)
    {
        if(touchLocation.y>211 && touchLocation.y<=268)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(130, 211)];
                [drawingPath addLineToPoint:CGPointMake(173,268)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
    //3
    if(touchLocation.x>173 && touchLocation.x<=218)
    {
        if(touchLocation.y>268 && touchLocation.y<=328)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                [drawingPath moveToPoint:CGPointMake(173, 268)];
                [drawingPath addLineToPoint:CGPointMake(218, 328)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
    //4
    if(touchLocation.x>218 && touchLocation.x<=256)
    {
        if(touchLocation.y>328 && touchLocation.y<=378)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                [drawingPath moveToPoint:CGPointMake(218, 328)];
                [drawingPath addLineToPoint:CGPointMake(256, 378)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
    //5
    if(touchLocation.x>384 && touchLocation.x<=428)
    {
        if(touchLocation.y>152 && touchLocation.y<=213)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(436, 142)];
                [drawingPath addLineToPoint:CGPointMake(384, 213)];
                
                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>338 && touchLocation.x<=384)
    {
        if(touchLocation.y>213 && touchLocation.y<=270)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(384, 213)];
                [drawingPath addLineToPoint:CGPointMake(340, 270)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
    
    //7
    
    if(touchLocation.x>296 && touchLocation.x<=338)
    {
        if(touchLocation.y>270 && touchLocation.y<=331)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(340, 270)];
                [drawingPath addLineToPoint:CGPointMake(296,331)];
                checkcountvar++;
                checkcount[6]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[6]);
            }
        }
    }
    
     //start from right slanting
    
    //8
    
    if(touchLocation.x>256 && touchLocation.x<=296)
    {
        if(touchLocation.y>331 && touchLocation.y<=378)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                [drawingPath moveToPoint:CGPointMake(296, 331)];
                [drawingPath addLineToPoint:CGPointMake(258,380)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
    
    
    //9
    
    if(touchLocation.x>256 && touchLocation.x<=258)
    {
        if(touchLocation.y>378 && touchLocation.y<=470)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(256, 378)];
                [drawingPath addLineToPoint:CGPointMake(256,470)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    
    //10
    
    
    if(touchLocation.x>258 && touchLocation.x<=261)
    {
        if(touchLocation.y>470 && touchLocation.y<=540)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(256, 470)];
                [drawingPath addLineToPoint:CGPointMake(256,540)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    //11
    
    
    if(touchLocation.x>259 && touchLocation.x<=261)
    {
        if(touchLocation.y>540 && touchLocation.y<=617)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                
                [drawingPath moveToPoint:CGPointMake(256, 540)];
                [drawingPath addLineToPoint:CGPointMake(256, 620)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }
    
    
//    //12
//    
//    if(touchLocation.x>328 && touchLocation.x<=356)
//    {
//        if(touchLocation.y>248 && touchLocation.y<=286)
//        {
//            if (checkcountvar==11 && checkcount[11]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(328, 286)];
//                [drawingPath addLineToPoint:CGPointMake(356,248)];
//                checkcountvar++;
//                checkcount[11]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
//            }
//        }
//    }
//    
//    
//    //13
//    if(touchLocation.x>308 && touchLocation.x<=328)
//    {
//        if(touchLocation.y>286 && touchLocation.y<=306)
//        {
//            if (checkcountvar==12 && checkcount[12]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(308, 306)];
//                [drawingPath addLineToPoint:CGPointMake(328, 286)];
//                checkcountvar++;
//                checkcount[12]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
//            }
//        }
//    }
//    
//    
//    //14
//    if(touchLocation.x>285 && touchLocation.x<=308)
//    {
//        if(touchLocation.y>306 && touchLocation.y<=342)
//        {
//            if (checkcountvar==13 && checkcount[13]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(285, 342)];
//                [drawingPath addLineToPoint:CGPointMake(308, 306)];
//                checkcountvar++;
//                checkcount[13]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
//            }
//        }
//    }
//    
//    
//    //15
//    if(touchLocation.x>259 && touchLocation.x<=285)
//    {
//        if(touchLocation.y>342 && touchLocation.y<=375)
//        {
//            if (checkcountvar==14 && checkcount[14]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(259, 375)];
//                [drawingPath addLineToPoint:CGPointMake(285,342)];
//                checkcountvar++;
//                checkcount[14]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
//            }
//        }
//    }
//    
//    
//    //start from straight line
//    
//    //16
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=259)
//    {
//        if(touchLocation.y>375 && touchLocation.y<=419)
//        {
//            if (checkcountvar==15 && checkcount[15]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 419)];
//                [drawingPath addLineToPoint:CGPointMake(259, 375)];
//                checkcountvar++;
//                checkcount[15]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
//            }
//        }
//    }
//    
//    //17
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>419 && touchLocation.y<=448)
//        {
//            if (checkcountvar==16 && checkcount[16]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 448)];
//                [drawingPath addLineToPoint:CGPointMake(257,419)];
//                checkcountvar++;
//                checkcount[16]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
//            }
//        }
//    }
//    
//    
//    //18
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>448 && touchLocation.y<=490)
//        {
//            if (checkcountvar==17 && checkcount[17]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 490)];
//                [drawingPath addLineToPoint:CGPointMake(257, 448)];
//                checkcountvar++;
//                checkcount[17]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[17]);
//            }
//        }
//    }
//    
//    
//    
//    //19
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>490 && touchLocation.y<=523)
//        {
//            if (checkcountvar==18 && checkcount[18]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 523)];
//                [drawingPath addLineToPoint:CGPointMake(257, 490)];
//                checkcountvar++;
//                checkcount[18]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[18]);
//            }
//        }
//    }
//    
//    
//    //20
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>523 && touchLocation.y<=562)
//        {
//            if (checkcountvar==19 && checkcount[19]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 562)];
//                [drawingPath addLineToPoint:CGPointMake(257, 523)];
//                checkcountvar++;
//                checkcount[19]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[19]);
//            }
//        }
//    }
//    
//    
//    
//    
//    
//    
//    //21
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>562 && touchLocation.y<=594)
//        {
//            if (checkcountvar==20 && checkcount[20]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 594)];
//                [drawingPath addLineToPoint:CGPointMake(257, 562)];
//                checkcountvar++;
//                checkcount[20]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[20]);
//            }
//        }
//    }
//    
//    //22
//    
//    
//    if(touchLocation.x>257 && touchLocation.x<=257)
//    {
//        if(touchLocation.y>594 && touchLocation.y<=637)
//        {
//            if (checkcountvar==21 && checkcount[21]==0)
//            {
//                [drawingPath moveToPoint:CGPointMake(257, 637)];
//                [drawingPath addLineToPoint:CGPointMake(257, 594)];
//                checkcountvar++;
//                checkcount[21]++;
//                NSLog(@"%i====>%i",checkcountvar,checkcount[21]);
//            }
//        }
//    }
//
//    
//
//

    
    
    if(checkcountvar==11)
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
