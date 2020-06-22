//
//  main.swift
//  打家劫舍
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func rob(_ nums: [Int]) -> Int {
    if nums.count < 0 {
        return 0
    }
    if nums.count == 1 {
        return nums.first!
    }
    var dp = Array.init(repeating: 0, count: nums.count)//
    dp[0] = nums[0]
    dp[1] = max(dp[0], nums[1])
    for i in 2 ..< nums.count {
        dp[i] = max(dp[i-2]+nums[i], dp[i-1])
    }
    return dp[nums.count - 1]
}

rob([2,1,1,3,])
