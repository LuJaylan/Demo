//
//  main.swift
//  每日温度
//
//  Created by 鲁俊良 on 2020/6/12.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func dailyTemperatures(_ T: [Int]) -> [Int] {
    var res = Array.init(repeating: 0, count: T.count)
    if T.count <= 1 {
        return res
    }
    for i in stride(from: res.count - 2, to: -1, by: -1) {
        if T[i] >= T[i + 1] {//前者比后者大
            var k = 1
            var j = i + 1
            while j < res.count {
                if T[i] < T[j] {
                    res[i] = k
                    break;
                }else if res[j] == 0 {
                    res[i] = 0
                    break;
                }else {
                    k = k + res[j]
                    j = j + res[j]
                }
            }
        }else {//后者比前者大
            res[i] = 1
        }
    }
    return res
}

dailyTemperatures([89,62,70,58,47,47,46,76,100,70])

