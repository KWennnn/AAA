//
//  AdvertManager.h
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdvertManager : NSObject
#pragma mark ***禁用***
+(instancetype)new UNAVAILABLE_ATTRIBUTE;
-(instancetype)init UNAVAILABLE_ATTRIBUTE;
#pragma mark ***单列***
+(AdvertManager*)shared;

#pragma mark ***方法***
-(void)refreshAdvert;
//展示广告
-(void)showAdvert;

@end

NS_ASSUME_NONNULL_END
