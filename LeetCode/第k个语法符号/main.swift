//
//  main.swift
//  第k个语法符号
//
//  Created by 鲁俊良 on 2020/6/10.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func kthGrammar(_ N: Int, _ K: Int) -> Int {
    if N == 1 {
        return 0
    }
    var res = Array.init(repeating: 0, count: 1 << N)
    for j in 1 ... N - 1 {
        for i in stride(from: 1 << j-1, to: j-1, by: -1) {
            if i % 2 == 0 {
                res[i] = res[i/2]
            }else {
                res[i] = res[i/2] == 0 ? 1 : 0
            }
        }
    }
    return res[K-1]
}

let v = kthGrammar(2, 1)
print(v)

