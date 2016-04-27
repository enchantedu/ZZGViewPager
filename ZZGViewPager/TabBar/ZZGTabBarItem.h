//
//  ZZGTabBarItem.h
//  ZZGViewPager
//
//  Created by dito on 16/4/18.
//  Copyright © 2016年 zouzhigang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ZZGTabBarItem : NSObject


@property (nonatomic, copy) NSString *title;

@property (nonatomic,assign) CGFloat itemWidth;

@property (nonatomic, assign) CGFloat indicatoWidth;

@property (nonatomic, assign) BOOL showBadge;


- (instancetype)initWithTitle:(NSString *)title;

- (instancetype)initWithTitle:(NSString *)title
                    itemWidth:(CGFloat)itemWidth
               indicatorWidth:(CGFloat)indicatorWidth
                    showBadge:(BOOL)showBadge;

- (instancetype)initWithCustomView:(UIView *)customView indicatorWidth:(CGFloat)indicatorWidth;

@end

























