//
//  NSObject+Runtime.h
//  CategoryLearn
//
//  Created by charls on 16/4/15.
//  Copyright © 2016年 Charls. All rights reserved.
//              

#import <Foundation/Foundation.h>
#import <objc/runtime.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (Runtime)


#pragma mark - AssociatedObject

/**
 *  设置关联
 *
 *  @param cValue  关联的对象
 *  @param cKey    关联的key
 *  @param cPolicy 关联的类型
 */
- (void)hyc_setAssociatedObject:(nullable id)cValue key:(const void *)cKey policy:(objc_AssociationPolicy)cPolicy;

/**
 *  获取关联
 *
 *  @param cKey 关联的key
 *
 *  @return 关联的对象
 */
- (nullable id)hyc_getAssociatedObjectWithKey:(const void *)cKey;

#pragma mark - PerformedOnce

/**
 *  <#Description#>
 *
 *  @param cb   <#cb description#>
 *  @param cKey <#cKey description#>
 */
- (void)hyc_performOnce:(void (^)(void))cb key:(NSString *)cKey;

@end

NS_ASSUME_NONNULL_END
