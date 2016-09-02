//
//  XMGWine.h
//  902showData
//
//  Created by zhuchenglong on 16/9/2.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XMGWine : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,copy) NSString *money;
@property (nonatomic,copy) NSString *image;

+(instancetype)wineWithDict:(NSDictionary *)dict;



@end
