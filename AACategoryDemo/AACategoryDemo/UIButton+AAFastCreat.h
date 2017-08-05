//
//  UIButton+AACreatFast.h
//  AACategoryDemo
//
//  Created by An An on 2017/8/5.
//  Copyright © 2017年 An An. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIControl+BlocksKit.h"
@interface UIButton (AACreatFast)


/**
 快速创建固定样式按钮(可自定义标题)
 
 @param title 标题
 @param fatherView 父视图
 @param handler 按钮事件
 @return 创建的按钮
 */
+ (UIButton *)aa_btnWithTitle:(NSString *)title
                   fatherView:(UIView *)fatherView
              addEventHandler:(void (^)(id sender))handler;


/**
 快速创建固定样式按钮(可自定义背景色和标题)
 
 @param color 背景色
 @param title 标题
 @param fatherView 父视图
 @param handler 按钮事件
 @return 创建的按钮
 */
+ (UIButton *)aa_btnWithBackgroundColor:(UIColor *)color
                                  title:(NSString *)title
                             fatherView:(UIView *)fatherView
                        addEventHandler:(void (^)(id sender))handler;




@end
