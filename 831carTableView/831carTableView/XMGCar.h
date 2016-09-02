//
//  XMGCar.h
//  831carTableView
//
//  Created by zhuchenglong on 16/8/31.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGCar : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *icon;

+(instancetype)carWithName:(NSString *)name icon:(NSString *)icon;


@end
