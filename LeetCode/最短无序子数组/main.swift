//
//  main.swift
//  最短无序子数组
//
//  Created by 鲁俊良 on 2020/5/31.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func findUnsortedSubarray(_ nums: [Int]) -> Int {
    if nums.count <= 1 {
        return 0
    }
    var left = 0//左指针
    var right = nums.count - 1//右指针
    /*
     从左往右找到大于最大数的最右位置
     从右往左找到小于最小数的最左位置
     */
    var maxLeft = nums[0]
    var minRight = nums.last!
    for i in 1 ..< nums.count {
        maxLeft = max(maxLeft, nums[i])
        if nums[i] < maxLeft {
            left = i
        }
    }
    
    for j in stride(from: nums.count-1, to: -1, by: -1) {
        minRight = min(minRight, nums[j])
        if nums[j] > minRight {
            right = j
        }
    }
    
    return max(left - right + 1,0)
}

findUnsortedSubarray([2,1])
