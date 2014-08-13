//
//  AppDelegate.h
//  testingONphase
//
//  Created by BSA univ 9 on 08/07/14.
//  Copyright (c) 2014 BSA univ 9. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong,nonatomic)NSArray *devices;
- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;
-(NSArray *)getUserData;
@end
