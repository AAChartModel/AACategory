//
//  UIButton+AACreatFast.m
//  AACategoryDemo
//
//  Created by An An on 2017/8/5.
//  Copyright © 2017年 An An. All rights reserved.
//

#import "UIButton+AAFastCreat.h"
#define ColorWithRGB(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define KBlueColor         ColorWithRGB(63, 153,231,1)
#define AABtnTittleFont 13
@implementation UIButton (AACreatFast)
+ (UIButton *)aa_btnWithTitle:(NSString *)title
                   fatherView:(UIView *)fatherView
              addEventHandler:(void (^)(id sender))handler {
    return  [self aa_btnWithBackgroundColor:KBlueColor title:title fatherView:fatherView addEventHandler:handler];
}

+ (UIButton *)aa_btnWithBackgroundColor:(UIColor *)color
                                  title:(NSString *)title
                             fatherView:(UIView *)fatherView
                        addEventHandler:(void (^)(id sender))handler
{
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];//自定义
    button.backgroundColor = color;
    [button setTitle:title forState:UIControlStateNormal];
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    button.layer.cornerRadius = 3;
    button.layer.masksToBounds = YES;
    button.titleLabel.font = [UIFont systemFontOfSize:AABtnTittleFont+3];
    [fatherView addSubview:button];
    NSLayoutConstraint *leftConstraint = [NSLayoutConstraint constraintWithItem:button
                                                                      attribute:NSLayoutAttributeLeft
                                                                      relatedBy:NSLayoutRelationEqual
                                                                         toItem:fatherView
                                                                      attribute:NSLayoutAttributeLeft
                                                                     multiplier:1.0
                                                                       constant:30];
    [fatherView addConstraint:leftConstraint];
    
    NSLayoutConstraint *rightConstraint = [NSLayoutConstraint constraintWithItem:button
                                                                       attribute:NSLayoutAttributeRight
                                                                       relatedBy:NSLayoutRelationEqual
                                                                          toItem:fatherView
                                                                       attribute:NSLayoutAttributeRight
                                                                      multiplier:1.0
                                                                        constant:-30];
    [fatherView addConstraint:rightConstraint];
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:button
                                                                        attribute:NSLayoutAttributeHeight
                                                                        relatedBy:NSLayoutRelationEqual
                                                                           toItem:nil
                                                                        attribute:NSLayoutAttributeNotAnAttribute
                                                                       multiplier:0.0
                                                                         constant:40];
    [button addConstraint:heightConstraint];
    
    [button bk_addEventHandler:handler forControlEvents:UIControlEventTouchUpInside];
    
    return button;
}

@end
