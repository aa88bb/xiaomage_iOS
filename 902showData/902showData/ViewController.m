//
//  ViewController.m
//  902showData
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"
#import "XMGWine.h"

@interface ViewController () <UITableViewDataSource>


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
    
    return cell;
}



@end
