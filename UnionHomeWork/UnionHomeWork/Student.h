//
//  Student.h
//  Chapter01_員編
//
//  Created by timkao on 13/11/14.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject


@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *lastname;




+(Student *) createWithFirstname :(NSString *)a1 withlastname : (NSString *) a2;

+(Student *) createWithFirstname :(NSString *)a1;


-(void) printMsg;


@end
