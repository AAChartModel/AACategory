//
//  UIBarButtonItem+AAFastCreat.m
//  AACategoryDemo
//
//  Created by An An on 2017/8/5.
//  Copyright © 2017年 An An. All rights reserved.
//

#import "UIBarButtonItem+AAFastCreat.h"
#define AABtnTittleFont 13
@implementation UIBarButtonItem (AAFastCreat)

+ (UIBarButtonItem *)navBarRightBtnWithTitle:(NSString *)title
                              navigationItem:(UINavigationItem *)navigationItem
                             addEventHandler:(void(^)(id sender))handler {
    return [self configureNavBarRightBtnWithTitle:title image:nil navigationItem:navigationItem addEventHandler:handler];
}

+ (UIBarButtonItem *)navBarRightBtnWithImage:(UIImage *)image
                              navigationItem:(UINavigationItem *)navigationItem
                             addEventHandler:(void(^)(id sender))handler {
    return [self configureNavBarRightBtnWithTitle:nil image:image navigationItem:navigationItem addEventHandler:handler];
}

+ (UIBarButtonItem *)configureNavBarRightBtnWithTitle:(NSString *)title
                                                image:(UIImage *)image
                                       navigationItem:(UINavigationItem *)navigationItem
                                      addEventHandler:(void(^)(id sender))handler
{
    UIBarButtonItem *barButItem;
    if (image !=nil) {
        barButItem = [[UIBarButtonItem alloc]bk_initWithImage:image  style:UIBarButtonItemStylePlain handler:handler];
    }else if (title!=nil){
        barButItem =  [[UIBarButtonItem alloc]bk_initWithTitle:title style:UIBarButtonItemStylePlain handler:handler];
    }
    [barButItem setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:AABtnTittleFont+1]} forState:UIControlStateNormal];
    barButItem.tintColor = [UIColor whiteColor];
    [navigationItem setRightBarButtonItem:barButItem];
    return barButItem;
}

@end
