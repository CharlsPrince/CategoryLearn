//
//  NSObject+Runtime.m
//  CategoryLearn
//
//  Created by charls on 16/4/15.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "NSObject+Runtime.h"

@implementation NSObject (Runtime)

#pragma mark - AssociatedObject

- (void)hyc_setAssociatedObject:(nullable id)cValue key:(const void *)cKey policy:(objc_AssociationPolicy)cPolicy
{
    objc_setAssociatedObject(self, cKey, cValue, cPolicy);
}

- (nullable id)hyc_getAssociatedObjectWithKey:(const void *)cKey
{
    return objc_getAssociatedObject(self, cKey);
}

#pragma mark - PerformedOnce

- (void)hyc_performOnce:(void (^)(void))cb key:(NSString *)cKey
{
    NSMutableArray *performedArray = [self hyc_performedArray];
    if (![performedArray containsObject:cKey])
    {
        [performedArray addObject:cKey];
        cb();
    }
}

- (NSMutableArray *)hyc_performedArray
{
    NSMutableArray *curArray = [self hyc_getAssociatedObjectWithKey:_cmd];
    if (curArray) return curArray;
    
    curArray = [NSMutableArray array];
    [self hyc_setAssociatedObject:curArray key:_cmd policy:OBJC_ASSOCIATION_RETAIN_NONATOMIC];
    return curArray;
}

@end
