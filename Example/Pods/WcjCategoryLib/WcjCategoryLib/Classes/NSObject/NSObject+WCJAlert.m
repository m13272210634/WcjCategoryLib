//
//  NSObject+MHAlert.m
//  WeChat
//
//  Created by CoderMikeHe on 2017/8/14.
//  Copyright © 2017年 CoderMikeHe. All rights reserved.
//

#import "NSObject+WCJAlert.h"
#import <WcjCategoryLib/UINavigationController+WCJExtenesion.h>

@implementation NSObject (WCJAlert)

+ (void)wcj_showAlertViewWithTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirmTitle {
    
    [self wcj_showAlertViewWithTitle:title message:message confirmTitle:confirmTitle confirmAction:NULL];
}

+ (void)wcj_showAlertViewWithTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirmTitle confirmAction:(void(^)())confirmAction {
    
    [self wcj_showAlertViewWithTitle:title message:message confirmTitle:confirmTitle cancelTitle:nil confirmAction:confirmAction cancelAction:NULL];
}

+ (void)wcj_showAlertViewWithTitle:(NSString *)title message:(NSString *)message confirmTitle:(NSString *)confirmTitle cancelTitle:(NSString *)cancelTitle confirmAction:(void(^)())confirmAction cancelAction:(void(^)())cancelAction {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    /// 配置alertController
    /// 左边按钮
    if(cancelTitle.length>0){
        UIAlertAction *cancel= [UIAlertAction actionWithTitle:cancelTitle?cancelTitle:@"取消" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) { !cancelAction?:cancelAction(); }];
        [alertController addAction:cancel];
    }
    
    
    if (confirmTitle.length>0) {
        UIAlertAction *confirm = [UIAlertAction actionWithTitle:confirmTitle?confirmTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) { !confirmAction?:confirmAction();}];
        [alertController addAction:confirm];
    }
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [[UINavigationController wcj_getCurrentViewController] presentViewController:alertController animated:YES completion:NULL];
    });
}

@end
