//
//  main.swift
//  杨辉三角0
//
//  Created by 鲁俊良 on 2020/6/8.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func generate(_ numRows: Int) -> [[Int]] {
    var res = [[Int]]()
    if numRows == 0 {
        return res
    }
    res.append([1])
    for i in 1 ..< numRows {
        let pre = res[i-1]
        var item = Array.init(repeating: 0, count: i+1)
        for j in 0 ... i {
            if j == 0 || i == j {
                item[j] = 1
            }else {
                item[j] = pre[j-1] + pre[j]
            }
        }
        res.append(item)
    }
    return res
}

let res =  generate(5)
print(res)
