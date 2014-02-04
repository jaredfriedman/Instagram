//
//  SignUpViewController.m
//  InstaTest
//
//  Created by Jared Friedman on 2/3/14.
//  Copyright (c) 2014 Jared Friedman. All rights reserved.
//

#import "SignUpViewController.h"
@import CoreData;
#import "User.h"
#import "AppDelegate.h"
#import "MasterViewController.h"

@interface SignUpViewController ()
{
    AppDelegate *appDelegate;

    
    __weak IBOutlet UIImageView *profilePictureImageView;
    __weak IBOutlet UITextField *fullNameTextField;
    __weak IBOutlet UITextField *emailTextField;
    __weak IBOutlet UITextField *usernameTextField;
    __weak IBOutlet UITextField *passwordTextField;
    __weak IBOutlet UITextView *biographyTextView;
    
    
    
    
}

@end

@implementation SignUpViewController

- (IBAction)createProfileButtonPressed:(id)sender
{
    _user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:_managedObjectContext];
    
    
    
    NSError *error = nil;
    
    [_managedObjectContext save:&error];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    NSFetchRequest *request = [[NSFetchRequest alloc]initWithEntityName:@"User"];
    request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"username" ascending:YES]];
    _fetchedResultsController = [[NSFetchedResultsController alloc]initWithFetchRequest:request managedObjectContext:_managedObjectContext sectionNameKeyPath:nil cacheName:@"cacheee"];
    [_fetchedResultsController performFetch:nil];
    _fetchedResultsController.delegate = self;
    
    appDelegate = (AppDelegate*)[[UIApplication sharedApplication] delegate];
    
    // [self loadDetails];

}



@end
