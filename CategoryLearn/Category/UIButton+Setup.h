//
//  UIButton+Setup.h
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Setup)

/**
 *  按钮遍历构造器
 *
 *  @param buttonType 按钮类型
 *  @param frame      frame
 *
 *  @return 按钮对象
 */
+ (id) buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame;

@end
