//
//  User.h
//  InstaTest
//
//  Created by Jared Friedman on 2/3/14.
//  Copyright (c) 2014 Jared Friedman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSString * username;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * password;
@property (nonatomic, retain) NSNumber * followercount;
@property (nonatomic, retain) NSNumber * followingcount;
@property (nonatomic, retain) NSString * biography;
@property (nonatomic, retain) NSString * comments;
@property (nonatomic, retain) NSString * fullname;

@end
