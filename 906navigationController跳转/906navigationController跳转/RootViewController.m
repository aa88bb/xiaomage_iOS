//
//  RootViewController.m
//  906navigationController跳转
//
//  Created by zhuchenglong on 16/9/6.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "RootViewController.h"
#import "TwoViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController
- (IBAction)jumpto:(id)sender {
    
    TwoViewController *twoVC = [[TwoViewController alloc] init];
    [self.navigationController pushViewController:twoVC animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"root controller";
    //self.navigationItem.titleView = [UIButton buttonWithType:UIButtonTypeContactAdd];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"right" style:0 target:self action:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
