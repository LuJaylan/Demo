//
//  main.swift
//  最小路径和
//
//  Created by 鲁俊良 on 2020/6/12.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func minPathSum(_ grid: [[Int]]) -> Int {
    if grid.count == 0 {
        return 0
    }
    let row = grid.count;
    let colum = grid.first!.count
    var res = grid
    for i in 0 ... row - 1 {
        for j in 0 ... colum - 1 {
            if i == 0 && j == 0 {
                continue
            }
            if i == 0 {
                res[i][j] = res[i][j-1] + res[i][j]
                continue
            }
            if j == 0 {
                res[i][j] = res[i-1][j] + res[i][j]
                continue
            }
            res[i][j] = min(res[i][j-1], res[i-1][j]) + res[i][j]
        }
    }
    return res.last!.last!
    
}

let a = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

minPathSum(a)

