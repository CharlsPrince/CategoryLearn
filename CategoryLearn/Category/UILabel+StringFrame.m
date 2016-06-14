//
//  UILabel+StringFrame.m
//  CategoryLearn
//
//  Created by charls on 16/4/20.
//  Copyright © 2016年 Charls. All rights reserved.
//

#import "UILabel+StringFrame.h"

@implementation UILabel (StringFrame)

- (CGSize)boundingRectWithSize:(CGSize)size{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    
    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    
    self.numberOfLines = 0;
    
    return retSize;
}

- (CGFloat)heightForStringWithSize:(CGSize)size{
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(0, 0, size.width, size.height)];
    
    textView.font = self.font;
    textView.text = self.text;
    
    CGSize sizeToFit = [textView sizeThatFits:CGSizeMake(size.width, MAXFLOAT)];
    self.numberOfLines = 0;
    textView = nil;
    return sizeToFit.height;
}

@end
