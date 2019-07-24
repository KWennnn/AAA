//
//  ImageTool.m
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import "ImageTool.h"

@implementation ImageTool
+(UIImage*)screenShotPic:(UIView*)view {
    //开始绘图,三个参数为:1需要绘制成的图片大小,2是否透明,3图片尺寸
    UIGraphicsBeginImageContextWithOptions(view.frame.size, YES, [UIScreen mainScreen].scale);
    //获取当前的上下文,开始渲染图片
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    //获取当前上下文绘制好的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    //结束绘图
    UIGraphicsEndImageContext();
    return image;
}

+(UIImage*)screenShotScrollPic:(UITableView*)tableView {
    //滚动视图的offset,怎样边滚动边截图?
    UIImage *tableImage = nil;
    UITableView *scrollTable = tableView;
    //参数3: 图片的比例，其中0.0代表根据当前屏幕的屏幕来决定
    UIGraphicsBeginImageContextWithOptions(scrollTable.contentSize, scrollTable.opaque, 0.0);
    //保存当前的offset和frame
    CGPoint savedContentOffset = scrollTable.contentOffset;
    CGRect savedFrame = scrollTable.frame;
    //让scrollview从0开始
    scrollTable.contentOffset = CGPointZero;
    scrollTable.frame = CGRectMake(0, 0, scrollTable.contentSize.width, scrollTable.contentSize.height);
    //直接截图
    [scrollTable.layer renderInContext:UIGraphicsGetCurrentContext()];
    tableImage = UIGraphicsGetImageFromCurrentImageContext();
    //让scrollview回到原点
    scrollTable.contentOffset = savedContentOffset;
    scrollTable.frame = savedFrame;
    //返回图片
    return tableImage;
}
@end
