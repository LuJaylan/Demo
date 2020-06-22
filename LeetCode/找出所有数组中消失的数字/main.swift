//
//  main.swift
//  找出所有数组中消失的数字
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
    var res = [Int]()
    var nums = nums
    for i in 0 ..< nums.count {
        nums[abs(nums[i])-1] = abs(nums[abs(nums[i])-1]) * -1
    }
    for i in 0 ..< nums.count {
        if nums[i] >= 0 {
            res.append(i+1)
        }
    }
    return res
}

func findDisappearedNumbers0(_ nums: [Int]) -> [Int] {
    
    //因为swift中不用inout修饰的形参无法修改，所以先定义一个和形参同名的数组用来接收实参
    var nums = nums
    
    //定义返回数组
    var ans = [Int]()
    
    //遍历原数组，将每个元素-1的值当做索引，把对应索引位置上的元素取反用以标记该索引对应的数字存在
    for num in nums {
        
        nums[ abs(num) - 1 ] = abs(nums[ abs(num) - 1 ]) * -1
        
    }
    
    //再次遍历原数组，如果某个索引上的元素不为负数，则该索引+1的值即为缺失的数字
    for (index, num) in nums.enumerated() {
        if num > 0 {
            ans.append(index + 1)
        }
    }
    
    return ans
    
}



findDisappearedNumbers([4,3,2,7,8,2,3,1])
