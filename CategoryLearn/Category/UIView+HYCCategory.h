//
//  UIView+Category.h
//  CategoryLearn
//
//  Created by charls on 16/3/26.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^TapActionBlock)(UITapGestureRecognizer *tap);

const static void *tapActionKey = &tapActionKey;

@interface UIView (HYCCategory)

@property (nonatomic , copy) TapActionBlock tapBlock;

+ (id)initWithX:(CGFloat )x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height;
+ (id)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height bgColor:(UIColor *)color;
- (id)backgroundColor:(UIColor *)color;
///设置阴影
- (void)layerShadowWithColor:(UIColor *)color Opacity:(float)opacity Radius:(CGFloat)radius Offset:(CGSize)offset ;
///设置圆角
- (void)layerCornerRadius:(CGFloat)radius MasksToBounds:(BOOL)masksToBounds;
///设置边框
- (void)layerBorderColor:(UIColor *)color BorderWidth:(CGFloat)width;

- (void)addTapGestureRecognizer:(TapActionBlock )block;


@end
