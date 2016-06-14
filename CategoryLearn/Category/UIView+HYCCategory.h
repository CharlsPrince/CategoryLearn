//
//  UIView+Category.h
//  CategoryLearn
//
//  Created by charls on 16/3/26.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <UIKit/UIKit.h>

/* 定义单击回调块 */
typedef void(^TapActionBlock)(UITapGestureRecognizer *tap);

/* 动态创建单击回调块的key */
const static void *tapActionKey = &tapActionKey;

@interface UIView (HYCCategory)

/*  单击回调使用的块  */
@property (nonatomic , copy) TapActionBlock tapBlock;

/**
 *  UIView 初始化方法
 *
 *  @param x      x坐标
 *  @param y      y坐标
 *  @param width  宽
 *  @param height 高
 *
 *  @return UIView 对象
 */
+ (id)initWithX:(CGFloat )x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height;
/**
 *  UIView 初始化
 *
 *  @param x      x坐标
 *  @param y      y坐标
 *  @param width  宽
 *  @param height 高
 *  @param color  背景颜色
 *
 *  @return UIView对象
 */
+ (id)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height bgColor:(UIColor *)color;
/**
 *  设置 视图背景颜色
 *
 *  @param color UIColor 对象
 *
 *  @return UIView对象
 */
- (id)backgroundColor:(UIColor *)color;

/**
 *  设置阴影
 *
 *  @param color   阴影颜色
 *  @param opacity 不透明度
 *  @param radius  圆角
 *  @param offset  偏移量
 */
- (void)layerShadowWithColor:(UIColor *)color Opacity:(float)opacity Radius:(CGFloat)radius Offset:(CGSize)offset ;

/**
 *  设置圆角
 *
 *  @param radius        圆角
 *  @param masksToBounds 裁剪
 */
- (void)layerCornerRadius:(CGFloat)radius MasksToBounds:(BOOL)masksToBounds;

/**
 *  设置边框
 *
 *  @param color 边框颜色
 *  @param width 边框大小
 */
- (void)layerBorderColor:(UIColor *)color BorderWidth:(CGFloat)width;

/**
 *  单击触发事件
 *
 *  @param block 单击回调
 */
- (void)addTapGestureRecognizer:(TapActionBlock )block;


@end
