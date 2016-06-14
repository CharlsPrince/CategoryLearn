//
//  UIFont+HYCCategory.m
//  CategoryLearn
//
//  Created by charls on 16/4/23.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "UIFont+HYCCategory.h"

@implementation UIFont (HYCCategory)

+ (NSArray *)fontNames{
    //获取所有字体组
    NSArray *familyNames = [[NSArray alloc] initWithArray:[UIFont familyNames]];
    NSArray *fontNames;
    //创建一个可变数组存放所有字体
    NSMutableArray *totalFontNames = [NSMutableArray array];
    NSInteger indFamily;
    //遍历所有的组获取组内的字体
    for (indFamily=0; indFamily<[familyNames count]; ++indFamily)
    {
//        NSLog(@"Family name: %@", [familyNames objectAtIndex:indFamily]);
        fontNames = [[NSArray alloc] initWithArray:
                     [UIFont fontNamesForFamilyName:
                      [familyNames objectAtIndex:indFamily]]];
        [totalFontNames addObjectsFromArray:fontNames];
    }
    return totalFontNames; 
}

@end
