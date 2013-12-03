//
//  HW3ViewController.m
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "HW3ViewController.h"
#import "Person.h"
#import "Man.h"
#import "Woman.h"

@interface HW3ViewController ()

@end

@implementation HW3ViewController
@synthesize scrollview,txfAge1,txfFName1,txfLName1,swTaiwan1,txfAge2,txfFName2,txfLName2,txfAge3,txfFName3,txfLName3,textView,swTaiwan2,swTaiwan3;
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
    
    //scrollView練習
    
    //[scrollview setUserInteractionEnabled:YES];
    //[scrollview setDirectionalLockEnabled:YES];
    //scrollview.contentSize = CGSizeMake(320.0f, 800.0f);
    
    [textView setText:@""];
    
    //加入手勢 判別 鍵盤消失時機
    UITapGestureRecognizer *tapscroll = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapped)];
    tapscroll.cancelsTouchesInView = NO;
    [scrollview addGestureRecognizer:tapscroll];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)run:(UIButton *)sender {
    
    //Switch 狀態取得一定要用switchStaus
    Person *person = [[Person alloc] initWithFirstName:txfFName1.text lastName:txfLName1.text age:[txfAge1.text intValue] isTaiwanese:[self switchStaus:swTaiwan1]];
    
    Woman *woman = [[Woman alloc] initWithFirstName:txfFName2.text lastName:txfLName2.text age:[txfAge1.text intValue] isTaiwanese:[self switchStaus:swTaiwan2]];
    
    Man *man = [[Man alloc] initWithFirstName:txfFName3.text lastName:txfLName3.text age:[txfAge3.text intValue] isTaiwanese:[self switchStaus:swTaiwan3]];
   
    NSMutableString *result = [NSMutableString new];
    [result appendString:[person description]];
    [result appendString:@"\n"];
    [result appendString:[woman description]];
    [result appendString:@"\n"];
    [result appendString:[man description]];
    [result appendString:@"\n"];
    
    [textView setText:result];
}

-(BOOL)switchStaus:(id)sender
{
    UISwitch *mySwitch = (UISwitch *) sender;
    if([mySwitch isOn])
    {
        return YES;
    }
    else
    {
        return NO;
    }
}


#pragma mark-KeyBoard function
 //取消鍵盤
-(IBAction)doEidtFileDone:(UIView*)sender{
    //取消鍵盤
    for (UIView *v in sender.subviews) {
        if([v.subviews count] > 0)
        {
            [self doEidtFileDone:v];
        }
        if ([v isKindOfClass:[UITextField class]]) {
            [v resignFirstResponder];
        }
    }
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return NO;
}

-(void)textFieldDidBeginEditing:(UITextField *)textField
{
   }

-(void)tapped
{
    [self.view endEditing:YES];
}

@end
