//
//  UILabel+StringFrame.h
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (StringFrame)

/**
 *  计算文本宽高
 *
 *  @param size 固定宽度
 *
 *  @return 计算完成的size
 */
- (CGSize)boundingRectWithSize:(CGSize)size;

/**
 *  计算文本高度
 *
 *  @param size 固定宽度
 *
 *  @return 计算完成的高
 */
- (CGFloat)heightForStringWithSize:(CGSize)size;

@end
