//
//  HW1ViewController.m
//  UnionHomeWork
//
//  Created by timkao on 13/11/26.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "HW1ViewController.h"
#import "SecondViewController.h"

@interface HW1ViewController ()

@end

@implementation HW1ViewController

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

- (IBAction)hw1_button:(UIButton *)sender {
    
    SecondViewController *svc = [self.storyboard instantiateViewControllerWithIdentifier:@"SecondViewController"];
    [self addChildViewController:svc];
    [self.view addSubview:svc.view];
    [svc didMoveToParentViewController:self];
    
}
@end
