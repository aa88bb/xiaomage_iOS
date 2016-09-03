//
//  XMGTableViewController.m
//  902UITableView
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGTableViewController.h"

@interface XMGTableViewController ()

@end

@implementation XMGTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}



#pragma mark - Table view data source

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    
    cell.textLabel.text = @"hello";
    return cell;
}

@end
