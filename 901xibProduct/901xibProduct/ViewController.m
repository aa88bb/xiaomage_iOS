//
//  ViewController.m
//  901xibProduct
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"
#import "XMGShopView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *shopView = [[[NSBundle mainBundle] loadNibNamed:@"XMGShopView" owner:nil options:nil] lastObject];
     XMGShopView *shopView = [[[NSBundle mainBundle] loadNibNamed:@"XMGShopView" owner:nil options:nil] lastObject];
    shopView.frame = CGRectMake(100, 100, 80, 100);
    
    /*
    //bu hao     use controller view
    UIImageView *imageView = [shopView viewWithTag:100];
    UILabel *titleLabel = [shopView viewWithTag:200];
    imageView.image = [UIImage imageNamed:@"car.jpeg"];
    titleLabel.text = @"bao";
    */
    
    
    //way 2
    [shopView setTitle:@"djb"];
    [shopView setIcon:@"car.jpeg"];
    
    [self.view addSubview:shopView];
}



@end
