//
//  SecondViewController.m
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)hw1_result:(UIButton *)sender {
//     [self dismissViewControllerAnimated:YES completion:nil];
    
    //將目前的view移除
    [self.view removeFromSuperview];
}

    //消失前將子controller移除
- (void) viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
     NSLog(@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
     [self removeFromParentViewController];
}

- (void) dealloc {
    NSLog(@"%@ %@",NSStringFromClass([self class]),NSStringFromSelector(_cmd));
}

@end
