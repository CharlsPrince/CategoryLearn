//
//  UIButton+ActionBlock.m
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "UIButton+ActionBlock.h"

@implementation UIButton (ActionBlock)

- (ButtonHandler)actionHandler{
    return objc_getAssociatedObject(self, actionBlockKey);
}

- (void)setActionHandler:(ButtonHandler)actionHandler{
    objc_setAssociatedObject(self, actionBlockKey, actionHandler, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (void)handleActionBlock:(ButtonHandler)block{
    
    if (block) {
        self.actionHandler = block;
        ///添加一个触发事件
        [self addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];
    }
}

- (void)buttonPressed:(UIButton *)btn{
    if (self.actionHandler) {
        self.actionHandler(btn);
    }
}

@end


@implementation UIButton (AnimationScale)


- (void)animationTouchDownScaleToDemagn:(CGFloat)demagn{
    [self addTarget:self action:@selector(btnTouchDown:) forControlEvents:UIControlEventTouchDown];
}

- (void)btnTouchDown:(UIButton *)btn{
    [UIView animateWithDuration:0.2 animations:^{
        self.layer.transform = CATransform3DMakeScale(0.8, 0.8, 1.0);
    }];
}

- (void)animationScale{
    self.layer.transform = CATransform3DMakeScale(0.5, 0.5, 1.0);
    [UIView animateWithDuration:0.5 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0.2 options:UIViewAnimationOptionOverrideInheritedCurve | UIViewAnimationOptionCurveEaseIn animations:^{
        self.layer.transform = CATransform3DMakeScale(1.0, 1.0, 1.0);
    } completion:^(BOOL finished) {
        
    }];
}

@end


