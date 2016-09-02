//
//  ViewController.m
//  901useXib
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *carView = [[[NSBundle mainBundle] loadNibNamed:@"CarView" owner:nil options:nil] firstObject];
    [self.view addSubview:carView];
    
//    UINib *nib = [UINib nibWithNibName:@"CarView" bundle:nil];
//    UIView *view1 = [[nib instantiateWithOwner:nil options:nil] firstObject];
//    [self.view addSubview:view1];
    
}



@end
