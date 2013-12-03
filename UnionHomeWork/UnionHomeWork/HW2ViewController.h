//
//  HW2ViewController.h
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HW2ViewController : UIViewController<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UITextField *textField_first_name;
@property (weak, nonatomic) IBOutlet UITextField *textField_first_name2;

@property (weak, nonatomic) IBOutlet UITextField *textField_last_name;

@property (weak, nonatomic) IBOutlet UITextField *textField_last_name2;
- (IBAction)runButton:(UIButton *)sender;

//-(IBAction)doEidtFileDone:(id)sender;

@end
