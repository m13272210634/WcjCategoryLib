//
//  UIView+MHExtension.h
//  MHDevLibExample
//
//  Created by apple on 16/6/14.
//  Copyright © 2016年 Mike_He. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (WCJExtension)

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)wcj_isShowingOnKeyWindow;

/**
 * xib创建的view
 */
+ (instancetype)wcj_viewFromXib;

/**
 * xib创建的view
 */
+ (instancetype)wcj_viewFromXibWithFrame:(CGRect)frame;

/**
 * xib中显示的属性
 */
@property (nonatomic,strong) IBInspectable UIColor *borderColor;
@property (nonatomic,assign) IBInspectable CGFloat borderWidth;
@property (nonatomic,assign) IBInspectable CGFloat cornerRadius;
@property (nonatomic,assign) IBInspectable BOOL masksToBounds;

@end
