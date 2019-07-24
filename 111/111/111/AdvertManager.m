//
//  AdvertManager.m
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import "AdvertManager.h"

@implementation AdvertManager
-(AdvertManager *)initPrivate {
    if (self = [super init]) {
        
    }
    return  self;
}


+(AdvertManager*)shared {
    static AdvertManager *instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] initPrivate];
    });
    return instance;
}

-(void)refreshAdvert {
    //刷新广告
}

-(void)showAdvert {
    //展示广告
}
@end
