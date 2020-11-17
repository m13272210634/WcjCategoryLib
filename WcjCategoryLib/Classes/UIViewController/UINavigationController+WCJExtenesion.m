//
//  UINavigationController+gkld_Extenesion.m
//  GKLD
//
//  Created by Mac on 2018/10/10.
//  Copyright © 2018年 Mac. All rights reserved.
//

#import "UINavigationController+WCJExtenesion.h"

@implementation UINavigationController (WCJExtenesion)

+ (UIViewController *)wcj_getRootViewController{
    
    UIWindow* window = [[[UIApplication sharedApplication] delegate] window];
    NSAssert(window, @"The window is empty");    return window.rootViewController;
}

+ (UINavigationController *)jsd_getCurrentNavigationController{
    UIViewController* currentViewController = [self wcj_getRootViewController];
    BOOL runLoopFind = YES;
    while (runLoopFind) {
        if ([currentViewController isKindOfClass:[UITabBarController class]]) {
            UITabBarController* tabBarController = (UITabBarController* )currentViewController;
            currentViewController = tabBarController.selectedViewController;
        }else if ([currentViewController isKindOfClass:[UINavigationController class]]) {
            return (UINavigationController*)currentViewController;
        }
    }return (UINavigationController*)currentViewController;
}


+ (UIViewController *)wcj_getCurrentViewController{
    UIViewController* currentViewController = [self wcj_getRootViewController];
    BOOL runLoopFind = YES;
    while (runLoopFind) {
        if (currentViewController.presentedViewController) {
            currentViewController = currentViewController.presentedViewController;
        } else if ([currentViewController isKindOfClass:[UINavigationController class]]) {          UINavigationController* navigationController = (UINavigationController* )currentViewController;
            currentViewController = [navigationController.childViewControllers lastObject];
        } else if ([currentViewController isKindOfClass:[UITabBarController class]]) {
            UITabBarController* tabBarController = (UITabBarController* )currentViewController;
            currentViewController = tabBarController.selectedViewController;
        } else {
            NSUInteger childViewControllerCount = currentViewController.childViewControllers.count;
            if (childViewControllerCount > 0) {
                currentViewController = currentViewController.childViewControllers.lastObject;
                return currentViewController;
            } else {
                
                return currentViewController;
            }
        }
    }    return currentViewController;
}





@end
