//
//  ViewController.m
//  901获取主线程
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
    NSThread *mainThread = [NSThread mainThread];
    NSLog(@"%@",mainThread);
    NSThread *currentThread = [NSThread currentThread];
    NSLog(@"%@",currentThread);
    
    BOOL ismain = [currentThread isMainThread];
    NSLog(@"%d",ismain);
}



@end
