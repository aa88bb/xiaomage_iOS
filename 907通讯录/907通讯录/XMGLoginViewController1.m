//
//  XMGLoginViewController1.m
//  907通讯录
//
//  Created by zhuchenglong on 16/9/7.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGLoginViewController1.h"
#import "MBProgressHUD+XMG.h"

@interface XMGLoginViewController1 () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *accountField;
@property (weak, nonatomic) IBOutlet UITextField *pwdField;
@property (weak, nonatomic) IBOutlet UIButton *loginButton;

@property (weak, nonatomic) IBOutlet UISwitch *autoMima;
@property (weak, nonatomic) IBOutlet UISwitch *autoLogin;


@end

@implementation XMGLoginViewController1

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.accountField.delegate = self;
//    self.pwdField.delegate = self;
    [self.accountField addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
    [self.pwdField addTarget:self action:@selector(textChange) forControlEvents:UIControlEventEditingChanged];
}

- (IBAction)login:(id)sender {
    
    [MBProgressHUD showMessage:@"we are logging in..." toView:self.view];
    
    //delay
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        //check user name and pwd
        if([self.accountField.text isEqualToString:@"xmg"] && [self.pwdField.text isEqualToString:@"123"]){
            //jump to other page
            [MBProgressHUD hideHUDForView:self.view];
            
            [self performSegueWithIdentifier:@"contactVC" sender:nil];
        }else{
            //alert
            [MBProgressHUD showError:@"name or code error."];
        }

    });
    
    }






-(void)textChange{
        if(self.accountField.text.length && self.pwdField.text.length){
            self.loginButton.enabled = YES;
        }else{
            self.loginButton.enabled = NO;
        }
}

- (IBAction)remPwd:(id)sender {
    if(self.autoMima.on == NO){
        //self.autoLogin.on = NO;
        [self.autoLogin setOn:NO animated:YES];
    }
}



- (IBAction)remLogin:(id)sender {
    if(self.autoLogin.on == YES){
        [self.autoMima setOn:YES animated:YES];
    }
}



//-(BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
//    if(self.accountField.text.length && self.pwdField.text.length){
//        self.loginButton.enabled = YES;
//    }else{
//        self.loginButton.enabled = NO;
//    }
//    return YES;
//}


@end
