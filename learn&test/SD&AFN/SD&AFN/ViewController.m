//
//  ViewController.m
//  SD&AFN
//
//  Created by Jaylan on 2018/9/18.
//  Copyright © 2018年 Jaylan. All rights reserved.
//

#import "ViewController.h"
#import <Masonry.h>
//#import "SD"
@interface ViewController ()
@property (nonatomic, strong) UIButton * button2;
@property (nonatomic, strong) UIButton * button;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _button = [[UIButton alloc] initWithFrame:CGRectMake(50, 80, 300, 400)];
    _button.backgroundColor = [UIColor blueColor];
    [_button addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_button];
    
    _button2 = [[UIButton alloc] init];
    _button2.backgroundColor = [UIColor redColor];
    [self.view addSubview:_button2];
    __weak typeof(self) weakSelf = self;
    [_button2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(weakSelf.button.mas_right).offset(10);
        make.height.with.mas_equalTo(50);
        make.top.equalTo(self.view).offset(80);
    }];
    
}

- (void)btnAction {
    [_button removeFromSuperview];
    [_button2 mas_updateConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.view).offset(20);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
