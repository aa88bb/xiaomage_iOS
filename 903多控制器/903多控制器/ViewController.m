//
//  ViewController.m
//  903多控制器
//
//  Created by zhuchenglong on 16/9/3.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)tixing:(UIButton *)sender {
    UIApplication *app = [UIApplication sharedApplication];
    UIUserNotificationSettings *notice = [UIUserNotificationSettings settingsForTypes:UIUserNotificationTypeBadge categories:nil];
    [app registerUserNotificationSettings:notice];
    app.applicationIconBadgeNumber = 10;
}




- (IBAction)lianwang:(UIButton *)sender {
     UIApplication *app = [UIApplication sharedApplication];
    app.networkActivityIndicatorVisible = YES;
}



- (IBAction)zhuangtai:(UIButton *)sender {
     UIApplication *app = [UIApplication sharedApplication];
    app.statusBarHidden = NO;
    app.statusBarStyle = UIStatusBarStyleLightContent;
}


- (IBAction)wangye:(UIButton *)sender {
     UIApplication *app = [UIApplication sharedApplication];
    NSURL *url = [NSURL URLWithString:@"https://www.google.com"];
    [app openURL:url];
}


//-(UIStatusBarStyle)preferredStatusBarStyle{
//    return UIStatusBarStyleLightContent;
//}


- (void)viewDidLoad {
    [super viewDidLoad];
    
}


@end
