//
//  ViewController.m
//  906pickerViewDemo
//
//  Created by zhuchenglong on 16/9/6.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *country;
@property (weak, nonatomic) IBOutlet UITextField *birthday;
@property (weak, nonatomic) IBOutlet UITextField *city;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.country.delegate = self;
    
}

-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    return  NO;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
