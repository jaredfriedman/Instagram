//
//  ViewController.h
//  InstaTest
//
//  Created by Jared Friedman on 2/3/14.
//  Copyright (c) 2014 Jared Friedman. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>
#import "User.h"

@interface MasterViewController : UIViewController <NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) NSFetchedResultsController *fetchedResultsController;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;

@property (strong, nonatomic) User *user;

@end
