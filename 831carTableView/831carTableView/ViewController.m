//
//  ViewController.m
//  831carTableView
//
//  Created by zhuchenglong on 16/8/31.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"
#import "XMGCarGroup.h"
#import "XMGCar.h"

@interface ViewController () <UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong) NSArray *carGroups;

@end

@implementation ViewController

-(NSArray *)carGroups{
    if(!_carGroups){
        XMGCarGroup *group0 = [[XMGCarGroup alloc] init];
        group0.header = @"dexi";
        group0.footer = @"dettttt";
        group0.cars = @[
                        [XMGCar carWithName:@"benchi" icon:@"m_2_100"],
                        [XMGCar carWithName:@"baoma" icon:@"m_3_100"]
                        ];
        
        XMGCarGroup *group1 = [[XMGCarGroup alloc] init];
        group1.header = @"rixi";
        group1.footer = @"rixittttt";
        group1.cars = @[
                        [XMGCar carWithName:@"fengtian" icon:@"m_7_100"],
                        [XMGCar carWithName:@"mazida" icon:@"m_18_100"],
                        [XMGCar carWithName:@"bentian" icon:@"m_26_100"]
                        ];
        _carGroups = @[group0,group1];
    }
    return _carGroups;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.dataSource = self;
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.carGroups.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    if(section == 0){
//        return 2;
//    }else{
//        return 3;
//    }
    
    XMGCarGroup *group = self.carGroups[section];
    return group.cars.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    //cell.accessoryView = [[UISwitch alloc] init];
    
//    if(indexPath.section == 0){
//        if(indexPath.row ==0){
//            cell.textLabel.text = @"benchi";
//            cell.imageView.image = [UIImage imageNamed:@"m_2_100"];
//
//        }else{
//            cell.textLabel.text = @"baoma";
//            cell.imageView.image = [UIImage imageNamed:@"m_3_100"];
//        }
//        
//    }else if(indexPath.section == 1){
//        if(indexPath.row ==0){
//            cell.textLabel.text = @"fengtian";
//            cell.imageView.image = [UIImage imageNamed:@"m_7_100"];
//            
//        }else if(indexPath.row ==1){
//            cell.textLabel.text = @"mazida";
//            cell.imageView.image = [UIImage imageNamed:@"m_18_100"];
//        }else if (indexPath.row ==2){
//            cell.textLabel.text = @"bentian";
//            cell.imageView.image = [UIImage imageNamed:@"m_26_100"];
//        }
//
//        
//    }
//    return cell;
    
    XMGCarGroup *group = self.carGroups[indexPath.section];
    XMGCar *car = group.cars[indexPath.row];
    cell.textLabel.text = car.name;
    cell.imageView.image = [UIImage imageNamed:car.icon];
    return cell;
    
}


-(NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
//    if(section == 0){
//        return @"dexi";
//    }else{
//        return @"rixi";
//    }
    XMGCarGroup *group = self.carGroups[section];
    return group.header;
    
}

-(NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section{
//    if(section == 0){
//        return @"dexittttttt";
//    }else{
//        return @"rixittttttt";
//    }
    
    XMGCarGroup *group = self.carGroups[section];
    return group.footer;
}


@end
