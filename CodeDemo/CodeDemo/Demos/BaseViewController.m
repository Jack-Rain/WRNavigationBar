//
//  BaseViewController.m
//  CodeDemo
//
//  Created by wangrui on 2017/5/16.
//  Copyright © 2017年 wangrui. All rights reserved.
//

#import "BaseViewController.h"
#import "AppDelegate.h"

#define kScreenWidth [UIScreen mainScreen].bounds.size.width

@interface BaseViewController ()
@end

@implementation BaseViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBar.hidden = YES;
    self.automaticallyAdjustsScrollViewInsets = NO;
    [self setupNavBar];
}

- (void)setupNavBar
{
    [self.view addSubview:self.navBar];
    self.navBar.items = @[self.navItem];
    self.navBar.barTintColor = MainNavBarColor;
    self.navBar.titleTextAttributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
    self.navBar.tintColor = [UIColor whiteColor];
}

- (UINavigationBar *)navBar
{
    if (_navBar == nil) {
        _navBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, kScreenWidth, 64)];
    }
    return _navBar;
}

- (UINavigationItem *)navItem
{
    if (_navItem == nil) {
        _navItem = [UINavigationItem new];
    }
    return _navItem;
}

@end
