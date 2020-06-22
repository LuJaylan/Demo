//
//  main.swift
//  数组中的第K个最大元素
//
//  Created by 鲁俊良 on 2020/6/15.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func heap(_ nums: inout [Int], _ i: Int, _ k: Int) {
    let temp = nums[i]
    var i = i
    var j = 2 * i + 1
    while j < k {
        if j + 1 < k && nums[j] > nums[j + 1] {
            j = j + 1
        }
        if temp > nums[j] {
            nums[i] = nums[j]
        }else {
            break
        }
        i = j
        j = 2 * j + 1
    }
    nums[i] = temp
}
var s = [4,5,3,5]

heap(&s, 0, 4)

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var nums = nums
    for i in stride(from: k/2 - 1, to: -1, by: -1) {//建堆和堆排序
        heap(&nums, i,k)
    }
    for j in k ..< nums.count {
        if nums[0] < nums[j] {
            nums[0] = nums[j]
        }
        heap(&nums, 0, k)
    }
    return nums[0]
 }


