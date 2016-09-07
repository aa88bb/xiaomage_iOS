//
//  ThreeViewController.m
//  906navigationController跳转
//
//  Created by zhuchenglong on 16/9/6.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ThreeViewController.h"

@interface ThreeViewController ()

@end

@implementation ThreeViewController
- (IBAction)backback:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)toroot:(id)sender {
    [self.navigationController popToViewController:self.navigationController.childViewControllers[0] animated:YES];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
