//
//  main.swift
//  三数之和
//
//  Created by 鲁俊良 on 2020/6/11.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var res = [[Int]]()
    if nums.count < 3 {
        return res
    }
    let nums = nums.sorted { (a, b) -> Bool in
        a < b
    }
    let n = nums.count
    for i in 0 ..< n - 2 {
        if nums[i] > 0 {
            return res
        }
        
        if i > 0 && nums[i] == nums[i - 1] {
            continue
        }
        var left = i + 1
        var right = n - 1
        while left < right {
            if nums[i] + nums[left] + nums[right] == 0 {
                res.append([nums[i],nums[left],nums[right]]);
                while left < right && nums[left] == nums[left + 1] {
                    left = left + 1
                }
                while left < right && nums[right] == nums[right - 1] {
                    right = right - 1
                }
                left = left + 1
                right = right - 1
            }else
            if nums[i] + nums[left] + nums[right] < 0 {
                left = left + 1
            }else
            if nums[i] + nums[left] + nums[right] > 0 {
                right = right - 1
            }
        }
    }
    return res
}

threeSum([-4,-2,-2,-2,0,1,2,2,2,3,3,4,4,6,6])
