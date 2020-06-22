//
//  main.swift
//  子集
//
//  Created by 鲁俊良 on 2020/6/1.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

//var res = [[Int]]()
func subsets(_ nums: [Int]) -> [[Int]] {//动态规划
    var res = [[Int]]()
    res.append([])
    if nums.count == 0 {
        return res
    }
    for i in 0 ..< nums.count {
        for j in 0 ..< res.count {//遍历res,将原来里面的每个数组加上新的元素
            var e = res[j]
            e.append(nums[i])
            res.append(e)
        }
    }
    return res
}

subsets([1,2,3])

