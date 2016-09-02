//
//  XMGCarView.m
//  901useXib
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGCarView.h"

@implementation XMGCarView

-(instancetype)initWithFrame:(CGRect)frame{
    if(self = [super initWithFrame:frame]){
        
    }
    return self;
}

-(void)layoutSubviews{
    [super layoutSubviews];
}

-(void)setCar:(XMGCar *)car{
    _car = car;
}


@end
