//
//  ZSMarginLabel.m
//  TestLabelMargin
//
//  Created by zskm on 2018/6/22.
//  Copyright © 2018年 zskm. All rights reserved.
//

#import "ZSMarginLabel.h"

@implementation ZSMarginLabel

- (void)drawTextInRect:(CGRect)rect
{
    UIEdgeInsets myLabelInsets = {0, self.marginWidth, 0, self.marginWidth};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, myLabelInsets)];
}

-(CGSize)intrinsicContentSize{
    CGSize contentSize = [super intrinsicContentSize];
    return CGSizeMake(contentSize.width + 2 * self.marginWidth, contentSize.height);
}

@end
