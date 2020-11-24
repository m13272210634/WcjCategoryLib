//
//  UIFont+WCJExtension.h
//  WCJDevLibExample
//
//  Created by apple on 16/5/12.
//  Copyright © 2016年 Mike_He. All rights reserved.
//
/**
 *  Mike_He 但是苹方字体 iOS9.0+出现  需要做适配
 *  这个分类主要用来 字体...
 (
 "PingFangSC-Ultralight",
 "PingFangSC-Regular",
 "PingFangSC-Semibold",
 "PingFangSC-Thin",
 "PingFangSC-Light",
 "PingFangSC-Medium"
 )
 */

// IOS版本
#define WCJIOSVersion ([[[UIDevice currentDevice] systemVersion] floatValue])


/// 设置系统的字体大小（YES：粗体 NO：常规）
#define WCJFont(__size__,__bold__) ((__bold__)?([UIFont boldSystemFontOfSize:__size__]):([UIFont systemFontOfSize:__size__]))

/// 极细体
#define WCJUltralightFont(__size__) ((WCJIOSVersion<9.0)?WCJFont(__size__ , YES):[UIFont wcj_fontForPingFangSC_UltralightFontOfSize:__size__])

/// 纤细体
#define WCJThinFont(__size__)       ((WCJIOSVersion<9.0)?WCJFont(__size__ , YES):[UIFont wcj_fontForPingFangSC_ThinFontOfSize:__size__])

/// 细体
#define WCJLightFont(__size__)      ((WCJIOSVersion<9.0)?WCJFont(__size__ , YES):[UIFont wcj_fontForPingFangSC_LightFontOfSize:__size__])

// 中等
#define WCJMediumFont(__size__)     ((WCJIOSVersion<9.0)?WCJFont(__size__ , YES):[UIFont wcj_fontForPingFangSC_MediumFontOfSize:__size__])

// 常规
#define WCJRegularFont(__size__)    ((WCJIOSVersion<9.0)?WCJFont(__size__ , NO):[UIFont wcj_fontForPingFangSC_RegularFontOfSize:__size__])

/** 中粗体 */
#define WCJSemiboldFont(__size__)   ((WCJIOSVersion<9.0)?WCJFont(__size__ , YES):[UIFont wcj_fontForPingFangSC_SemiboldFontOfSize:__size__])



/// 苹方常规字体 10
#define WCJRegularFont_10 WCJRegularFont(10.0f)
/// 苹方常规字体 11
#define WCJRegularFont_11 WCJRegularFont(11.0f)
/// 苹方常规字体 12
#define WCJRegularFont_12 WCJRegularFont(12.0f)
/// 苹方常规字体 13
#define WCJRegularFont_13 WCJRegularFont(13.0f)
/** 苹方常规字体 14 */
#define WCJRegularFont_14 WCJRegularFont(14.0f)
/// 苹方常规字体 15
#define WCJRegularFont_15 WCJRegularFont(15.0f)
/// 苹方常规字体 16
#define WCJRegularFont_16 WCJRegularFont(16.0f)
/// 苹方常规字体 17
#define WCJRegularFont_17 WCJRegularFont(17.0f)
/// 苹方常规字体 18
#define WCJRegularFont_18 WCJRegularFont(18.0f)
/// 苹方常规字体 19
#define WCJRegularFont_19 WCJRegularFont(19.0f)
/// 苹方常规字体 20
#define WCJRegularFont_20 WCJRegularFont(20.0f)


#import <UIKit/UIKit.h>

@interface UIFont (WCJExtension)

/**
 *  苹方极细体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_UltralightFontOfSize:(CGFloat)fontSize;

/**
 *  苹方常规体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_RegularFontOfSize:(CGFloat)fontSize;

/**
 *  苹方中粗体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_SemiboldFontOfSize:(CGFloat)fontSize;

/**
 *  苹方纤细体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_ThinFontOfSize:(CGFloat)fontSize;

/**
 *  苹方细体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_LightFontOfSize:(CGFloat)fontSize;

/**
 *  苹方中黑体
 *
 *  @param fontSize 字体大小
 *
 */
+(instancetype) wcj_fontForPingFangSC_MediumFontOfSize:(CGFloat)fontSize;




@end
