//
//  NSArray+Extend.m
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import "NSArray+Extend.h"
#import <UIKit/UIKit.h>

@implementation NSArray (Extend)
//自定义map函数
-(NSArray *)map:(id (^)(id, NSInteger,NSArray *__weak))handler {
    if (handler == NULL) {
        return [NSArray arrayWithArray:self.mutableCopy];
    }
    NSMutableArray *tempArray = [NSMutableArray array];
    for (int i = 0; i<self.count ; i++) {
        [tempArray addObject:handler(self[i],i,self)];
    }
    return tempArray;
}
//自定义filter函数

@end
