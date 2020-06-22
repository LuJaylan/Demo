//
//  SubClass+sss.m
//  category
//
//  Created by Jaylan on 2019/8/20.
//  Copyright © 2019 Jaylan. All rights reserved.
//

#import "SubClass+sss.h"

@implementation SubClass (sss)
+ (void)initialize
{
    if (self == [SubClass class]) {
        NSLog(@"subClassssss-initialize");
    }
}
@end
