//
//  NSObject+PropertyListing.h
//  CategoryLearn
//
//  Created by charls on 16/4/19.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (PropertyListing)

/* 获取对象的所有属性，不包括属性值 */
- (NSArray *)getAllProperties;

/* 获取对象的所有属性 以及属性值 */
- (NSDictionary *)properties_aps;

/* 获取对象的所有方法 */
-(void)printMothList;

@end
