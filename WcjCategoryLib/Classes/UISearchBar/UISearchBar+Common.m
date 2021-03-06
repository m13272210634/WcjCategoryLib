//
//  UISearchBar+Common.m
//  Coding_iOS
//
//  Created by Ease on 15/4/22.
//  Copyright (c) 2015年 Coding. All rights reserved.
//

#import "UIColor+expanded.h"
#define kColorDarkA [UIColor colorWithHexString:@"0xA9B3BE"]

#import "UISearchBar+Common.h"
//#import ""
#import "UIImage+Common.h"
#import "UIView+WCJ.h"

@implementation UISearchBar (Common)
- (void)insertBGColor:(UIColor *)backgroundColor{
    static NSInteger customBgTag = 999;
    UIView *realView = [[self subviews] firstObject];
    [[realView subviews] enumerateObjectsUsingBlock:^(UIView *obj, NSUInteger idx, BOOL *stop) {
        if (obj.tag == customBgTag) {
            [obj removeFromSuperview];
        }
    }];
    if (backgroundColor) {
        UIImageView *customBg = [[UIImageView alloc] initWithImage:[UIImage imageWithColor:backgroundColor withFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) + 20)]];
        [customBg setWcj_y:-20];
        customBg.tag = customBgTag;
        [[[self subviews] firstObject] insertSubview:customBg atIndex:1];
    }
}

- (UITextField *)eaTextField{
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(UIView *candidateView, NSDictionary *bindings) {
        return [candidateView isMemberOfClass:NSClassFromString(@"UISearchBarTextField")];
    }];
    return [self.subviews.firstObject.subviews filteredArrayUsingPredicate:predicate].lastObject;
}
- (void)setPlaceholderColor:(UIColor *)color{
    [[self valueForKey:@"_searchField"] setValue:kColorDarkA forKeyPath:@"_placeholderLabel.textColor"];
}
- (void)setSearchIcon:(UIImage *)image{
    [self setImage:image forSearchBarIcon:UISearchBarIconSearch state:UIControlStateNormal];
}
@end
