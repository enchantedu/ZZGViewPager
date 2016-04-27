//
//  ViewController.m
//  ZZGViewPager
//
//  Created by dito on 16/4/18.
//  Copyright © 2016年 zouzhigang. All rights reserved.
//

#import "ViewController.h"
#import "ZZGPagerViewController.h"
#import "DemoViewControllerOne.h"
#import "DemoViewControllerTwo.h"

@interface ViewController () <ZZGPagerViewControllerDataSource, ZZGPagerViewControllerDelegate>

@end

@implementation ViewController {
    NSArray *_dataArray;
    
    ZZGPagerViewController *_pagerViewController;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _dataArray = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9"];
    }
    return self;
}

- (void)loadView {
    [super loadView];
    
    _pagerViewController = [[ZZGPagerViewController alloc] init];
    _pagerViewController.dataSource = self;
    _pagerViewController.delegate = self;
    _pagerViewController.itemFont = [UIFont systemFontOfSize:20];
    _pagerViewController.textColor = [UIColor redColor];
    _pagerViewController.itemHeight = 72;
    _pagerViewController.indicatorHeight = 6;
    _pagerViewController.view.frame = self.view.frame;
    [self.view addSubview:_pagerViewController.view];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark - ZZGPagerViewControllerDelegate
- (void)pagerViewController:(ZZGPagerViewController *)pagerViewController didSelectTabAtIndex:(NSUInteger)index {
    NSLog(@"didselect index :%d",index);
}


#pragma mark - ZZGPagerViewControllerDataSource
- (NSInteger)numberOfViewControllers:(ZZGPagerViewController *)pagerViewController {
    return _dataArray.count;
}

- (NSString *)pagerViewController:(ZZGPagerViewController *)pagerViewController titleAtIndex:(NSInteger)index {
    return _dataArray[index];
}

- (UIViewController *)pagerViewController:(ZZGPagerViewController *)pagerViewController viewControllerAtIndex:(NSInteger)index {
    if (index == 0) {
        DemoViewControllerOne *first = [[DemoViewControllerOne alloc] init];
        first.backgroundColor = [UIColor blueColor];
        first.title = @"first";
        return first;
    } else if (index == 1) {
        DemoViewControllerOne *second = [[DemoViewControllerOne alloc] init];
        second.backgroundColor = [UIColor greenColor];
        second.title = @"second";
        return second;
    } else if (index == 2) {
        DemoViewControllerOne *third = [[DemoViewControllerOne alloc] init];
        third.backgroundColor = [UIColor redColor];
        third.title = @"third";
        return third;
    } else if (index == 3) {
        DemoViewControllerOne *fouth = [[DemoViewControllerOne alloc] init];
        fouth.backgroundColor = [UIColor blackColor];
        fouth.title = @"fouth";
        return fouth;
    } else if (index == 4) {
        DemoViewControllerOne *five = [[DemoViewControllerOne alloc] init];
        five.backgroundColor = [UIColor purpleColor];
        five.title = @"five";
        return five;
    } else if (index == 5) {
        DemoViewControllerOne *six = [[DemoViewControllerOne alloc] init];
        six.backgroundColor = [UIColor redColor];
        six.title = @"six";
        return six;
    } else if (index == 6) {
        DemoViewControllerOne *seven = [[DemoViewControllerOne alloc] init];
        seven.backgroundColor = [UIColor whiteColor];
        seven.title = @"seven";
        return seven;
        
    } else if (index == 7) {
        DemoViewControllerOne *seven = [[DemoViewControllerOne alloc] init];
        seven.backgroundColor = [UIColor whiteColor];
        seven.title = @"seven";
        return seven;
    } else if (index == 8) {
        DemoViewControllerOne *seven = [[DemoViewControllerOne alloc] init];
        seven.backgroundColor = [UIColor whiteColor];
        seven.title = @"seven";
        return seven;
    } else {
        DemoViewControllerOne *seven = [[DemoViewControllerOne alloc] init];
        seven.backgroundColor = [UIColor whiteColor];
        seven.title = @"seven";
        return seven;
    }
}

#pragma mark - Action

@end
