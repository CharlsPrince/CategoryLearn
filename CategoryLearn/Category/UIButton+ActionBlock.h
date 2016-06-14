//
//  UIButton+ActionBlock.h
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>

/**
 *  按钮点击回调的块
 *
 *  @param sender 按钮对象
 */
typedef void(^ButtonHandler)(UIButton *sender);

/**
 *  动态属性的key
 */
static const void *actionBlockKey = &actionBlockKey;

@interface UIButton (ActionBlock)

/**
 *  按钮点击回调块
 */
@property (nonatomic, copy) ButtonHandler actionHandler;

/**
 *  处理点击事件
 *
 *  @param block 处理点击事件回调块
 */
- (void)handleActionBlock:(ButtonHandler)block;

@end


@interface UIButton (AnimationScale)

/**
 *  按钮点击缩放
 *
 *  @param demagn 缩放程度 / 0 ~ 1.0
 */
- (void)animationTouchDownScaleToDemagn:(CGFloat)demagn;

/**
 *  动画到原来状态
 */
- (void)animationScale;



@end

