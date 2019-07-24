//
//  ImageTool.h
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImageTool : NSObject
//普通截屏操作
+(UIImage*)screenShotPic:(UIView*)view;
//滚动视图的截屏
+(UIImage*)screenShotScrollPic:(UITableView*)tableView;
@end

NS_ASSUME_NONNULL_END
