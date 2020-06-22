//
//  main.swift
//  多数元素
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func majorityElement(_ nums: [Int]) -> Int {
    var dict = Dictionary<Int,Int>()
    for item in nums {
        if dict.keys.contains(item) {
            dict[item]! = dict[item]! + 1
        }else {
            dict[item] = 1
        }
    }
    
    for item in dict.keys {
        if dict[item]! > nums.count/2 {
            return item
        }
    }
    return 0
}

majorityElement([2,2,1,1,1,2,2])

