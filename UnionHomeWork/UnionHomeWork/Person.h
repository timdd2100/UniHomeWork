//
//  Person.h
//  Chapter3
//
//  Created by timkao on 13/11/15.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

//屬性宣告
@property (nonatomic) NSString *firstName;

@property (nonatomic) NSString *lastName;

@property (nonatomic) int age;

@property (atomic, readonly, getter = getFullName,getter = test1) NSString *fullName;

@property (atomic, getter = isTaiwanese) bool taiwanese;


-(id) initWithFirstName: (NSString *) fn lastName:(NSString *) ln age:(int) age isTaiwanese:(BOOL) it;

- (NSString *) description;

@end
