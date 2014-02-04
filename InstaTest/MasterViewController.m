//
//  ViewController.m
//  InstaTest
//
//  Created by Jared Friedman on 2/3/14.
//  Copyright (c) 2014 Jared Friedman. All rights reserved.
//

#import "MasterViewController.h"
@import CoreData;
#import "User.h"
#import "AppDelegate.h"

@interface MasterViewController ()
{
    
    AppDelegate *appDelegate;


    
    
}
@end

@implementation MasterViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    
}


-(void)loadDetails
{
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:0 inSection:0];

    User  *tempUser = [_fetchedResultsController objectAtIndexPath:indexPath];
     NSLog(@"person details %@", tempUser.username);
}

//- (IBAction)createProfileButtonPressed:(id)sender

//{
 //   _user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:_managedObjectContext];
    
//    _user.fullname = nameTextField.text;
//    _user.username = usernameTextField.text;
//    _user.email = emailTextField.text;
//    _user.password = passwordTextField.text;
//    _user.biography = biographyTextField.text;
    
//    NSError *error = nil;
//
//   [_managedObjectContext save:&error];
//    
//}




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end
