//
//  XMGPerson.h
//  901KVC
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMGDog.h"

@interface XMGPerson : NSObject

@property (nonatomic,copy) NSString *name;
@property (nonatomic,assign) int age;
@property (nonatomic, assign) float money;
@property (nonatomic, strong) XMGDog *dog;


@end
