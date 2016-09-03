//
//  ViewController.m
//  902性能优化
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 200;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    static NSString *ID = @"wine";
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:ID];
    
//    UITableViewCell *cell = [[UITableViewCell alloc] init];
//    cell.textLabel.text = [NSString stringWithFormat:@"this is  %ld.",indexPath.row];
    
    
    
    //去缓存池取是否有可循环的cell
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"wine"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"wine"];
    }
    
    
    
    
    
    cell.textLabel.text = [NSString stringWithFormat:@"this is  %ld.",indexPath.row];
    return cell;
}



@end
