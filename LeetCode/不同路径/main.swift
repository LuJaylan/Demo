//
//  main.swift
//  不同路径
//
//  Created by 鲁俊良 on 2020/6/21.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func uniquePaths(_ m: Int, _ n: Int) -> Int {//sum!/(mm! * nn!)
    let mm = m - 1
    let nn = n - 1
    let t = min(mm, nn)
    let sum = mm + nn
    if t == 0 {
         return 1
    }
    var res = 1
    for i in stride(from: sum, to: 0, by: -1) {
        res = res * i
        if i <= mm && i <= nn {
            res = res / (i * i)
        }
        if mm <= nn {
            if i <= nn && i > mm {
                res = res / i
            }
        }else {
            if i <= mm && i > nn {
                res = res / i
            }
        
        }
    }
    return res
}



uniquePaths(7, 3)

