//
//  UIView+Category.m
//  CategoryLearn
//
//  Created by charls on 16/3/26.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "UIView+HYCCategory.h"
#import <objc/runtime.h>

@implementation UIView (HYCCategory)

+ (id)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height{
    id obj = [[self alloc] initWithFrame:CGRectMake(x, y, width, height)];
    return obj;
}

+ (id)initWithX:(CGFloat)x Y:(CGFloat)y Width:(CGFloat)width Height:(CGFloat)height bgColor:(UIColor *)color{
    id obj = [self initWithX:x Y:y Width:width Height:height];
    [obj backgroundColor:color];
    return obj;
}

- (id)backgroundColor:(UIColor *)color{
    self.backgroundColor = color;
    return self;
}

- (void)layerShadowWithColor:(UIColor *)color Opacity:(float)opacity Radius:(CGFloat)radius Offset:(CGSize)offset{
    self.layer.shadowColor = color.CGColor;
    self.layer.shadowOpacity = opacity;
    self.layer.shadowRadius = radius;
    self.layer.shadowOffset = offset;
}

- (void)layerCornerRadius:(CGFloat)radius MasksToBounds:(BOOL)masksToBounds{
    self.layer.cornerRadius = radius;
    self.layer.masksToBounds = masksToBounds;
}

- (void)layerBorderColor:(UIColor *)color BorderWidth:(CGFloat)width{
    self.layer.borderColor = color.CGColor;
    self.layer.borderWidth = width;
}

- (void)setTapBlock:(TapActionBlock)tapBlock{
    objc_setAssociatedObject(self, tapActionKey, tapBlock, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (TapActionBlock)tapBlock{
    return  objc_getAssociatedObject(self, tapActionKey);
}

- (void)addTapGestureRecognizer:(TapActionBlock )block{
    if (block) {
        self.tapBlock = block;
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
        [self addGestureRecognizer:tap];
    }
}

- (void)tapAction:(UITapGestureRecognizer *)tap{
    if (self.tapBlock) {
        self.tapBlock(tap);
    }
}

@end
