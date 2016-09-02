//
//  XMGWine.m
//  902showData
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import "XMGWine.h"

@implementation XMGWine

+(instancetype)wineWithDict:(NSDictionary *)dict{
    XMGWine *wine = [[XMGWine alloc] init];
    
    [wine setValuesForKeysWithDictionary:dict];
    return wine;
}


@end
