//
//  HW2ViewController.m
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "HW2ViewController.h"
#import "Student.h"

@interface HW2ViewController ()

@end

@implementation HW2ViewController

@synthesize textView,textField_first_name,textField_last_name,textField_first_name2,textField_last_name2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    [textView setText:@""];
    [textView setTextColor:[UIColor brownColor]];
    
    //加入手勢 判別 鍵盤消失時機
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(hideKeyBoard)];
     tap.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:tap];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)runButton:(UIButton *)sender {
    Student *s1 = [Student new];
    
    s1.firstname = textField_first_name.text;
    s1.lastname = textField_last_name.text;
    
    [s1 printMsg];
    
    NSMutableString *result = [NSMutableString stringWithFormat:@"This Student's name is %@, %@", s1.firstname,s1.lastname];
    
    [result appendString:@"\n"];
    
    
    Student *s2 = [Student createWithFirstname:[textField_first_name2 text]   withlastname:[textField_last_name2 text]];
    
    [s2 printMsg];
    
    
     NSMutableString *result2 = [NSMutableString stringWithFormat:@"This Student's name is %@, %@", s2.firstname,s2.lastname];
     [result appendString:result2];
     [textView setText:[NSMutableString stringWithFormat:@"%@",result]];
    }

//-(IBAction)doEidtFileDone:(UIView*)sender{
//    //取消鍵盤
//    for (UIView *v in sender.subviews) {
//        if([v.subviews count] > 0)
//        {
//            [self doEidtFileDone:v];
//        }
//        if ([v isKindOfClass:[UITextField class]]) {
//            [v resignFirstResponder];
//        }
//    }
//}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

#pragma -mark --取消鍵盤的方法
//取消鍵盤的方法
-(void)hideKeyBoard
{
    [self.view endEditing:YES];
}
@end
