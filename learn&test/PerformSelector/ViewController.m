//
//  ViewController.m
//  PerformSelector
//
//  Created by Jaylan on 2020/4/7.
//  Copyright © 2020 Jaylan. All rights reserved.
//

#import "ViewController.h"
#import "Worker.h"

#import <objc/runtime.h>

@interface ViewController ()
@property (nonatomic, strong) Worker *worker;
@end

@implementation ViewController
@synthesize worker;

- (void)viewDidLoad {
    [super viewDidLoad];
    worker = [[Worker alloc] init];
    [worker performSelector:@selector(working)];//如果没有定义working方法，会报警告
    
    unsigned int count;
    Method *methods = class_copyMethodList([worker class], &count);
    SEL sel = method_getName(methods[0]);
    [self action:sel];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self->worker performSelector:@selector(working) withObject:@"jaylan" afterDelay:2];
    });
}

- (void)action:(SEL)selector {
    [worker performSelector:selector withObject:@"jaylan"];
}


@end
