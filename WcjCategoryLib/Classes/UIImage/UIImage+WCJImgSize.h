//
//  UIImage+ImgSize.h
//  CleverParents
//
//  Created by Candy on 2017/11/13.
//  Copyright © 2017年 com.zhiweism. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface UIImage (WCJImgSize)

+ (CGSize)wcj_getImageSizeWithURL:(id)URL;

+ (UIImage *)wcj_compressImage:(UIImage *)image toByte:(NSUInteger)maxLength ;

@end
