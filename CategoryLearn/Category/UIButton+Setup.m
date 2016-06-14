//
//  UIButton+Setup.m
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "UIButton+Setup.h"

@implementation UIButton (Setup)

///便利构造
+ (id) buttonWithType:(UIButtonType)buttonType frame:(CGRect)frame{
    UIButton *btn = [self buttonWithType:buttonType];
    btn.frame = frame;
    return btn;
}

@end
