//
//  main.swift
//  杨辉三角2
//
//  Created by 鲁俊良 on 2020/6/8.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func getRow(_ rowIndex: Int) -> [Int] {
    var res = Array.init(repeating: 1, count: rowIndex + 1)
    for i in 0 ... rowIndex {
        for j in stride(from: i, to: -1, by: -1) {
            if j == 0 || i == j {
                res[j] = 1
            }else {
                res[j] = res[j] + res[j-1]
            }
        }
    }
    return res
}

getRow(4)

