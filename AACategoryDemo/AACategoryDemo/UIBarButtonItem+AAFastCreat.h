//
//  UIBarButtonItem+AAFastCreat.h
//  AACategoryDemo
//
//  Created by An An on 2017/8/5.
//  Copyright © 2017年 An An. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIBarButtonItem+BlocksKit.h"

@interface UIBarButtonItem (AAFastCreat)
/**
 快速创建导航栏右上角按钮(可自定义标题)
 @param title 按钮标题
 @param navigationItem  navigationItem
 @param handler 按钮事件
 @return 创建的导航栏按钮
 */
+ (UIBarButtonItem *)navBarRightBtnWithTitle:(NSString *)title
                              navigationItem:(UINavigationItem *)navigationItem
                             addEventHandler:(void(^)(id sender))handler;

/**
 快速创建导航栏右上角按钮(可自定义背景图片)
 
 @param image 按钮标题
 @param navigationItem navigationItem
 @param handler 按钮事件
 @return 创建的导航栏按钮
 */
+ (UIBarButtonItem *)navBarRightBtnWithImage:(UIImage *)image
                              navigationItem:(UINavigationItem *)navigationItem
                             addEventHandler:(void(^)(id sender))handler;
@end
