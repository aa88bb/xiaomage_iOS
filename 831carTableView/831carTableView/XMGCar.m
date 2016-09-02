//
//  XMGCar.m
//  831carTableView
//
//  Created by zhuchenglong on 16/8/31.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGCar.h"

@implementation XMGCar

+(instancetype)carWithName:(NSString *)name icon:(NSString *)icon{
    XMGCar *car = [[XMGCar alloc] init];
    car.name = name;
    car.icon = icon;
    
    return  car;
}

@end
