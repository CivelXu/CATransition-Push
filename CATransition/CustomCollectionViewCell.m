//
//  CustomCollectionViewCell.m
//  CATransition
//
//  Created by xuxiwen on 16/6/11.
//  Copyright © 2016年 xuxiwen. All rights reserved.
//

#import "CustomCollectionViewCell.h"

@implementation CustomCollectionViewCell


// 解决 storyBoard 中 SDK造成 itemSize为默认尺寸 Bug问题
- (void)setBounds:(CGRect)bounds
{
    [super setBounds:bounds];
    self.contentView.frame = bounds;
}

@end
