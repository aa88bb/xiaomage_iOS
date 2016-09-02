//
//  ViewController.m
//  901kvo
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"
#import "XMGPerson.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XMGPerson *person = [[XMGPerson alloc] init];
    
    person.name = @"zs";
  
    [person addObserver:self forKeyPath:@"name" options:NSKeyValueObservingOptionNew context:nil];
      person.name = @"ls";
    [person removeObserver:self forKeyPath:@"name"];
    
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    NSLog(@"%@    %@    %@",keyPath,object,change);
}



@end
