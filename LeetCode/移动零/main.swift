//
//  main.swift
//  移动零
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func moveZeroes(_ nums: inout [Int]) {//防止越界
    if nums.count <= 1 {
        return
    }
    var i = 0
    var j = 0
    while i<=j && j <= nums.count - 1 {
        while i <= nums.count - 1 && nums[i] != 0 {//找到第一个为0的位置，指向它
            i = i + 1
        }
        j = i + 1
        while j <= nums.count - 1 && nums[j] == 0 {//找到下一个不为0的位置
            j = j + 1
        }
        if j <= nums.count - 1 {
            nums[i] = nums[j]
            nums[j] = 0
        }
    }
}

var nums = [2,1]
moveZeroes(&nums)

