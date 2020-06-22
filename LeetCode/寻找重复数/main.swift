//
//  main.swift
//  寻找重复数
//
//  Created by 鲁俊良 on 2020/6/18.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func findDuplicate(_ nums: [Int]) -> Int {
    var left = 0
    var right = nums.count - 1
    while left < right {
        let mid = (left + right) / 2
        var cnt = 0//小于等于mid的个数
        for item in nums {
            if item <= mid {
                cnt = cnt + 1
            }
        }
        if cnt > mid {
            right = mid
        }else {
            left = mid + 1
        }
    }
    return left
}

findDuplicate([1,4,4,2,4])

