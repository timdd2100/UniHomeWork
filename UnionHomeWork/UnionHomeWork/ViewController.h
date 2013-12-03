//
//  ViewController.h
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIView *detailview;
@property (weak, nonatomic) IBOutlet UITextView *textView;

@property (weak, nonatomic) IBOutlet UIButton *runButton;
- (IBAction)runResult:(UIButton *)sender;


@end
