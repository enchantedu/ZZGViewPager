//
//  DemoViewControllerTwo.m
//  ZZGViewPager
//
//  Created by dito on 16/4/18.
//  Copyright © 2016年 zouzhigang. All rights reserved.
//

#import "DemoViewControllerTwo.h"

@implementation DemoViewControllerTwo {
    UIWebView *_webView;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
    }
    return self;
}

- (void)loadView {
    [super loadView];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _webView = [[UIWebView alloc] initWithFrame:self.view.frame];
    _webView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:_webView];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_webView loadRequest:[NSURLRequest requestWithURL:[[NSURL alloc] initWithString:@"https://www.baidu.com"]]];
    
    self.navigationItem.title  = self.title;
}

@end
