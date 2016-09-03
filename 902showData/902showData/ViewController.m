//
//  ViewController.m
//  902showData
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"
#import "XMGWine.h"

@interface ViewController () <UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@property (nonatomic,strong) NSArray *wineArray;
@end

@implementation ViewController


-(NSArray *)wineArray{
    if(!_wineArray){
        NSArray *dicArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"wine.plist" ofType:nil]];
        
        NSMutableArray *temp = [NSMutableArray array];
        for (NSDictionary *wineDict in dicArray){
            [temp addObject:[XMGWine wineWithDict:wineDict]];
        }
        _wineArray = temp;
    }
    return _wineArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.tableView.rowHeight = 50;
//    self.tableView.sectionHeaderHeight = 30;
//    self.tableView.sectionFooterHeight = 30;
//    self.tableView.separatorColor = [UIColor redColor];
//    self.tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
//    self.tableView.tableFooterView = [[UISwitch alloc] init];
    
    
    self.tableView.delegate = self;
    
    
}

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.wineArray.count;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:nil];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    XMGWine *wine = self.wineArray[indexPath.row];
    cell.textLabel.text = wine.name;
    cell.imageView.image = [UIImage imageNamed:wine.image];
    cell.detailTextLabel.text = [NSString stringWithFormat:@"$%@",wine.money];
    cell.detailTextLabel.textColor = [UIColor orangeColor];
    cell.accessoryView = [[UISwitch alloc] init];
    
    return cell;
}



/**
 *  delegate
 */
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"I select %ld",indexPath.row);
}

@end
