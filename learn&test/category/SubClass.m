//
//  SubClass.m
//  category
//
//  Created by Jaylan on 2019/4/24.
//  Copyright © 2019 Jaylan. All rights reserved.
//

#import "SubClass.h"

@implementation SubClass

+ (void)load {
    NSLog(@"---%@",self);
}

+ (void)initialize
{
    if (self == [SubClass class]) {
        NSLog(@"subclass-initialize");
    }
}
@end
