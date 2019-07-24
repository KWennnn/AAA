//
//  AdvertView.m
//  111
//
//  Created by YY on 2019/7/24.
//  Copyright © 2019 ansen. All rights reserved.
//

#import "AdvertView.h"

@implementation AdvertView

-(instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.imageView = [[UIImageView alloc] initWithFrame:frame];
        [self addSubview:self.imageView];
        self.skipBtn = [[UIButton alloc] initWithFrame:CGRectMake(self.frame.size.width-80, 10, 50, 50)];
        
        [self addSubview:self.skipBtn];
        
    }
    return self;
}

-(void)setSourceImage:(UIImage *)sourceImage {
    
}
@end
