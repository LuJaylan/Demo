//
//  main.swift
//  买卖股票的最佳时机
//
//  Created by 鲁俊良 on 2020/5/29.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var maxInt = 0//item卖出时的最大值，
    var minInt = Int.max//到item的最小元素
    
    for item in prices {
        minInt = min(minInt, item)
        maxInt = max(maxInt,item - minInt)
    }
    return maxInt//最终的最大值
}

func maxProfit0(_ prices: [Int]) -> Int {//动态规划
    if prices.count == 0 {
        return 0
    }
    var dp = Array.init(repeating: 0, count: prices.count)
    var minPrice = prices[0]//最小价
    for i in 1 ..< prices.count {
        minPrice = min(minPrice, prices[i])
        dp[i] = max(dp[i-1], prices[i] - minPrice)
    }
    return dp[prices.count - 1]
}

maxProfit0([7,1,5,3,6,4])
