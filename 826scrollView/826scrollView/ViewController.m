//
//  ViewController.m
//  826scrollView
//
//  Created by zhuchenglong on 16/8/26.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //red view
    UIView *redview = [[UIView alloc] init];
    redview.backgroundColor = [UIColor redColor];
    redview.frame = CGRectMake(0, 0, 100, 100);
    [self.scrollView addSubview:redview];
    
    self.scrollView.clipsToBounds = YES;
    //content size
    self.scrollView.contentSize =  CGSizeMake(500, 500);
    
    //userInteractionEnabled
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
