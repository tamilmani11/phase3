//
//  GetKidNameViewController.h
//  testingONphase
//
//  Created by BSA univ 9 on 25/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface GetKidNameViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITapGestureRecognizer *tap;
@property (nonatomic, retain) NSManagedObjectContext *managedObjectContext;

@end
