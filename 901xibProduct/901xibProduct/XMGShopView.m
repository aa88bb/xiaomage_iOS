//
//  XMGShopView.m
//  901xibProduct
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGShopView.h"


@interface XMGShopView()
@property (weak, nonatomic) IBOutlet UIImageView *iconView;

@property (weak, nonatomic) IBOutlet UILabel *titleView;

@end


@implementation XMGShopView




-(void)setIcon:(NSString *)icon{
    self.iconView.image = [UIImage imageNamed:icon];
}

-(void)setTitle:(NSString *)title{
    self.titleView.text = title;
}

@end
