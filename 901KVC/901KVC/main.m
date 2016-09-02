//
//  main.m
//  901KVC
//
//  Created by zhuchenglong on 16/9/1.
//  Copyright © 2016年 zcl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XMGPerson.h"
#import "XMGDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        XMGPerson *person = [[XMGPerson alloc] init];
//        person.name = @"xiaoming";
//        person.age = 90;
//        NSLog(@"%@   %d",person.name,person.age);
        
        XMGPerson *person = [[XMGPerson alloc] init];
        [person setValue:@"wangwu" forKey:@"name"];
        [person setValue:@"80" forKey:@"age"];
        NSLog(@"%@   %d",person.name,person.age);
        
        
        person.dog = [[XMGDog alloc] init];
        person.dog.name = @"wangcai";
        NSLog(@"%@",person.dog.name);
        
    }
    return 0;
}
