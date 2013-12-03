//
//  HW3ViewController.h
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HW3ViewController : UIViewController<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollview;
@property (weak, nonatomic) IBOutlet UITextField *txfFName1;
@property (weak, nonatomic) IBOutlet UITextField *txfLName1;
@property (weak, nonatomic) IBOutlet UITextField *txfAge1;
@property (weak, nonatomic) IBOutlet UISwitch *swTaiwan1;
@property (weak, nonatomic) IBOutlet UITextField *txfFName2;
@property (weak, nonatomic) IBOutlet UITextField *txfLName2;
@property (weak, nonatomic) IBOutlet UISwitch *swTaiwan2;
@property (weak, nonatomic) IBOutlet UITextField *txfAge2;
@property (weak, nonatomic) IBOutlet UITextField *txfFName3;
@property (weak, nonatomic) IBOutlet UITextField *txfLName3;
@property (weak, nonatomic) IBOutlet UISwitch *swTaiwan3;
@property (weak, nonatomic) IBOutlet UITextField *txfAge3;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@end
