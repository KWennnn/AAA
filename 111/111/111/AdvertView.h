//
//  AdvertView.h
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdvertView : UIView
#pragma mark ***属性***
@property(nonatomic,strong)UIButton *skipBtn;//跳过按钮
@property(nonatomic,strong)UIImageView *imageView;//跳过按钮
@property(nonatomic,strong)UIImage *sourceImage;//展示图
@property(nonatomic,strong)UILabel *countLab;//倒计时标签
@end

NS_ASSUME_NONNULL_END
