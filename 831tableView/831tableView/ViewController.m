//
//  ViewController.m
//  831tableView
//
//  Created by zhuchenglong on 16/8/31.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.dataSource = self;
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(section == 0){
        return 2;
    } else if(section == 1){
        return 6;
    }else if(section == 2){
        return  6;
    }else {
        return 1;
    }
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
//    cell.textLabel.text = @"general";
//    cell.detailTextLabel.text = @"nice";
    if(indexPath.section==0){
        if(indexPath.row==0){
            cell.textLabel.text = @"general";
        }else {
            cell.textLabel.text = @"privacy";
        }
    }else {
        cell.textLabel.text = @"others";
    }
    
    return cell;
    
}







- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
