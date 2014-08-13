//
//  MGDrawingSlate.m
//  MGDrawingSlate
//
//  Created by Mihir Garimella on 6/28/12.
//  Copyright (c) 2012 Mihir Garimella.
//  Licensed for use under the MIT License. See the license file included with this source code or visit http://opensource.org/licenses/MIT for more information.
//

#import "MGDrawingSlate.h"
#import "ViewController.h"


@implementation MGDrawingSlate
{
    ViewController *mainVc;
}

static int checkcountvar;
#pragma mark - Initialization

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
        
        copyAtoZarray=[AtozObj APointsArray];
    }
    
}


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
    
         [drawingPath moveToPoint:CGPointMake(257, 128)];
    


  
   
 

}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    CGPoint touchLocation = [touch locationInView:self];
   
  
//NSLog(@"x=%f", touchLocation.x);
//NSLog(@"y=%f", touchLocation.y);
   // setBool=YES;
   // [drawingPath addLineToPoint: [touch locationInView:self]];
    [self MethodA:touchLocation];
       [self setNeedsDisplay];
}




-(void)MethodA:(CGPoint)TouchLocation
{
   
    CGPoint touchLocation =TouchLocation;
    //start from top and trun towords left side
    //1
    if(touchLocation.x>225 && touchLocation.x<=255)
    {
        if(touchLocation.y>127 && touchLocation.y<=192)
        {
            if (checkcount[0]==0 && checkcountvar==0)
            {
                
                [drawingPath addLineToPoint:CGPointMake(229, 204)];
                checkcountvar++;
                checkcount[0]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[0]);
                
                
            }
        }
    }
    //2
    
    if(touchLocation.x>199 && touchLocation.x<=225)
    {
        if(touchLocation.y>192 && touchLocation.y<=264)
        {
            if (checkcount[1]==0 && checkcountvar==1)
            {
                [drawingPath moveToPoint:CGPointMake(229, 204)];
                [drawingPath addLineToPoint:CGPointMake(204, 270)];
                checkcountvar++;
                
                
                checkcount[1]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[1]);
            }
        }
    }
    
//3
    if(touchLocation.x>174 && touchLocation.x<=199)
    {
        if(touchLocation.y>264 && touchLocation.y<=331)
        {
            if (checkcount[2]==0 && checkcountvar==2)
            {
                 [drawingPath moveToPoint:CGPointMake(204, 270)];
                [drawingPath addLineToPoint:CGPointMake(179, 341)];
                checkcountvar++;
                
                
                checkcount[2]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[2]);
            }
            
        }
    }
    
  //4
    if(touchLocation.x>147 && touchLocation.x<=174)
    {
        if(touchLocation.y>331 && touchLocation.y<=404)
        {
            if (checkcount[3]==0 && checkcountvar==3)
            {
                  [drawingPath moveToPoint:CGPointMake(179, 341)];
                [drawingPath addLineToPoint:CGPointMake(153, 410)];
                
                checkcountvar++;
                
                
                checkcount[3]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[3]);
            }
        }
    }
    
   //5
    if(touchLocation.x>122 && touchLocation.x<=147)
    {
        if(touchLocation.y>404 && touchLocation.y<=473)
        {
            if (checkcount[4]==0 && checkcountvar==4)
            {
                [drawingPath moveToPoint:CGPointMake(153, 410)];
                [drawingPath addLineToPoint:CGPointMake(128, 479)];

                
                checkcountvar++;
                
                
                checkcount[4]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[4]);
            }
        }
    }
    //6
    if(touchLocation.x>93 && touchLocation.x<=122)
    {
        if(touchLocation.y>473 && touchLocation.y<=545)
        {
            if (checkcount[5]==0 && checkcountvar==5)
            {
                [drawingPath moveToPoint:CGPointMake(128, 479)];
                [drawingPath addLineToPoint:CGPointMake(101, 550)];
                checkcountvar++;
                
                
                checkcount[5]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[5]);
            }
        }
    }
//7
    if(touchLocation.x>69 && touchLocation.x<=93)
    {
        if(touchLocation.y>545 && touchLocation.y<=613)
        {
            if (checkcountvar==6 && checkcount[6]==0)
            {
                [drawingPath moveToPoint:CGPointMake(101, 550)];
                [drawingPath addLineToPoint:CGPointMake(74, 624)];
                checkcountvar++;
                checkcount[7]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[7]);
            }
        }
    }
    
    
 //8
     //start from top and trun towords right side
    if(touchLocation.x>255 && touchLocation.x<=283)
    {
        if(touchLocation.y>127 && touchLocation.y<=197)
        {
            if (checkcountvar==7 && checkcount[7]==0)
            {
                 [drawingPath moveToPoint:CGPointMake(257, 126)];
                [drawingPath addLineToPoint:CGPointMake(278, 192)];
                checkcountvar++;
                checkcount[8]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[8]);
            }
        }
    }
    
    

    
//9
    
    if(touchLocation.x>283 && touchLocation.x<=311)
    {
        if(touchLocation.y>197 && touchLocation.y<=267)
        {
            if (checkcountvar==8 && checkcount[8]==0)
            {
                [drawingPath moveToPoint:CGPointMake(278, 192)];
                [drawingPath addLineToPoint:CGPointMake(300, 260)];
                checkcountvar++;
                checkcount[9]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[9]);
            }
        }
    }
    
    
   //10

    
    if(touchLocation.x>311 && touchLocation.x<=336)
    {
        if(touchLocation.y>267 && touchLocation.y<=338)
        {
            if (checkcountvar==9 && checkcount[9]==0)
            {
                [drawingPath moveToPoint:CGPointMake(300, 260)];
                [drawingPath addLineToPoint:CGPointMake(331, 351)];
                checkcountvar++;
                checkcount[10]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[10]);
            }
        }
    }

    //11
    
    
    if(touchLocation.x>336 && touchLocation.x<=362)
    {
        if(touchLocation.y>338 && touchLocation.y<=409)
        {
            if (checkcountvar==10 && checkcount[10]==0)
            {
                [drawingPath moveToPoint:CGPointMake(331, 351)];
                [drawingPath addLineToPoint:CGPointMake(345, 390)];
                checkcountvar++;
                checkcount[11]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[11]);
            }
        }
    }
    
    
    //12
    
    if(touchLocation.x>362 && touchLocation.x<=380)
    {
        if(touchLocation.y>409 && touchLocation.y<=479)
        {
            if (checkcountvar==11 && checkcount[11]==0)
            {
                [drawingPath moveToPoint:CGPointMake(344, 390)];
                [drawingPath addLineToPoint:CGPointMake(374, 469)];
                checkcountvar++;
                checkcount[12]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[12]);
            }
        }
    }
    
    
    //13
    if(touchLocation.x>380 && touchLocation.x<=410)
    {
        if(touchLocation.y>479 && touchLocation.y<=538)
        {
            if (checkcountvar==12 && checkcount[12]==0)
            {
                [drawingPath moveToPoint:CGPointMake(374, 469)];
                [drawingPath addLineToPoint:CGPointMake(397, 529)];
                checkcountvar++;
                checkcount[13]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[13]);
            }
        }
    }
    
    
    //14
    if(touchLocation.x>410 && touchLocation.x<=438)
    {
        if(touchLocation.y>538 && touchLocation.y<=617)
        {
            if (checkcountvar==13 && checkcount[13]==0)
            {
                [drawingPath moveToPoint:CGPointMake(397, 529)];
                [drawingPath addLineToPoint:CGPointMake(433, 624)];
                checkcountvar++;
                checkcount[14]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[14]);
            }
        }
    }
    
    
    //middle line
    //15
    if(touchLocation.x>167 && touchLocation.x<=250)
    {
        if(touchLocation.y>368 && touchLocation.y<=380)
        {
            if (checkcountvar==14 && checkcount[14]==0)
            {
                [drawingPath moveToPoint:CGPointMake(169, 382)];
                [drawingPath addLineToPoint:CGPointMake(252, 380)];
                checkcountvar++;
                checkcount[15]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[15]);
            }
            }
    }
    

    
    
    //16
    
    
    if(touchLocation.x>250 && touchLocation.x<=340)
    {
        if(touchLocation.y>368 && touchLocation.y<=380)
        {
            if (checkcountvar==15 && checkcount[15]==0)
            {
                [drawingPath moveToPoint:CGPointMake(252, 380)];
                [drawingPath addLineToPoint:CGPointMake(340, 380)];
                checkcountvar++;
                checkcount[16]++;
                NSLog(@"%i====>%i",checkcountvar,checkcount[16]);
                


            }
        }
    }
        
    if(checkcountvar==16)
    {
        
        drawingColor=[UIColor greenColor];
        
        [drawingColor setFill];
        
      
        
    }
    

  
}


@end