//
//  main.swift
//  全排列
//
//  Created by 鲁俊良 on 2020/6/1.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func permute(_ nums: [Int]) -> [[Int]] {//动态规划
    var res = [[Int]]()
    if nums.count == 0 {
        return res
    }
    res.append([])//没有元素时
    /*
     [1,2]有两个全排[1,2]和[2,1]
     [1,2,3]就多了个3后，将3在原来的数组里面插入位置有0...count(数组个数)n+1个，记得删除原来的[1,2]和[2,1]
     其实这儿可以用队列或者队列思想
     */
    for i in 0 ..< nums.count {//新加入的数据位置
        for j in 0 ..< res.count {//遍历没有新元素的数组
            var e = res.removeFirst()//移除并拿到前面的数组，类似队列
            for k in 0 ... e.count {//插入位置
                e.insert(nums[i], at: k)
                res.append(e)//将新的数组加入数组中
                e.remove(at: k)//注意重置数组，用于下次插入
            }
        }
    }
    return res
}

permute([1,2,3])

