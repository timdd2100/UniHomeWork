//
//  Student.m
//  Chapter01_員編
//
//  Created by timkao on 13/11/14.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "Student.h"
#import "HW2ViewController.h"

static Student *student;

@implementation Student



@synthesize firstname,lastname;
+(Student *) createWithFirstname:(NSString *)a1 withlastname:(NSString *)a2
{
    if (!student) {
        student = [[Student alloc]init];
        student.firstname = a1;
        student.lastname = a2;
    }
    
    
    
    return student;
}

+(Student *) createWithFirstname:(NSString *)a1
{
    return Nil;
}

-(void) printMsg
{
    NSLog(@"This Student's name is %@, %@", self.firstname,self.lastname);
   
}

@end
