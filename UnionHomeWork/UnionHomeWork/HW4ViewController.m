//
//  HW4ViewController.m
//  UnionHomeWork
//
//  Created by timkao on 13/11/29.
//  Copyright (c) 2013年 skl. All rights reserved.
//

#import "HW4ViewController.h"
#import "ResultViewController.h"
@interface HW4ViewController ()

@end

@implementation HW4ViewController

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

//-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    return 1;
//}
//
//-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return 3;
//}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [super tableView:tableView cellForRowAtIndexPath:indexPath];
    //cell.accessoryType = UITableViewCellStyleDefault;
    //NSArray* aa = [tableView indexPathsForVisibleRows];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    //NSUserDefaults *def = [NSUserDefaults standardUserDefaults];
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    if(section == 0 && row ==1)
    {
        [self.txftest setText:@"123"];
    }
    [self.tableView reloadData];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    ResultViewController *resultcon = (ResultViewController *)[segue destinationViewController];
    resultcon.param = @"result";
}


//-(bool)shouldAutorotate
//{
//    return YES;
//}

@end
