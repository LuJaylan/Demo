//
//  main.swift
//  根据身高重建队列
//
//  Created by 鲁俊良 on 2020/6/22.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    
}

func quick(<#parameters#>) -> <#return type#> {
    <#function body#>
}

func patition(_ arr: [Int], _ left: Int, _ right: Int) {
    var left = left
    var right = right
    let temp = arr[left];
    while left < right {
        while left < right && arr[right] > temp {
            right = right - 1
        }
        arr[left] = arr[right]
        
        while left < right && arr[left] < temp {
            left  = left + 1
        }
        arr[right] = arr[left]
    }
    arr[left] = temp
    return left
    
}

