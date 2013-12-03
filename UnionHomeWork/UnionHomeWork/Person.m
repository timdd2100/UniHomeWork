//
//  Person.m
//  Chapter3
//
//  Created by timkao on 13/11/15.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "Person.h"


@interface Person ()

@property BOOL _taiwanese;


@end


@implementation Person
@synthesize firstName,lastName,age,taiwanese,fullName=_fullName;
//實作初始化方法
-(id)initWithFirstName:(NSString *)fn lastName:(NSString *)ln age:(int)p_age isTaiwanese:(BOOL)it
{
    if (self) {
        self.firstName = fn;
        self.lastName = ln;
        self.age = p_age;
        self.taiwanese = it;
        //self.fullName = [fn stringByAppendingFormat:@" %@",ln];
    }
    
    return self;
}

//overwrite
-(NSString *)test1
{
    NSString *result = [NSString alloc];
    //self.fullName = [NSString stringWithFormat:@"%@",self.firstName];
    result = [NSString stringWithFormat:@"%@ %@",self.firstName,self.lastName];
    return result;
}

- (NSString *) description {
    NSMutableString *des = [[NSMutableString alloc] init];
    [des appendFormat:@"\n-------- %@ --------",NSStringFromClass([self class])];
    [des appendFormat:@"\nName:%@",[self test1]];
    [des appendFormat:@"\nage:%d",[self age]];
    [des appendFormat:self.isTaiwanese ? @"\nis Taiwanese" : @"\nis not Taiwanese"];
    return des;
}

@end
