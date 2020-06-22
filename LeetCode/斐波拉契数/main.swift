//
//  main.swift
//  斐波拉契数
//
//  Created by 鲁俊良 on 2020/6/9.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func fib(_ N: Int) -> Int {
    var res = Array.init(repeating: 0, count: N+1)
    if N == 0 {
        return res[0]
    }
    res[1] = 1
    if N == 1 {
        return res[N]
    }
    for i in 2 ... N {
        res[i] = res[i-1] + res[i-2]
    }
    return res[N]
}

fib(0)
