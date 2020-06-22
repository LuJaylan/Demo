//
//  main.swift
//  括号生成
//
//  Created by 鲁俊良 on 2020/6/1.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func generateParenthesis(_ n: Int) -> [String] {
    //  不会，所以开始想到的就是动态规划
    var res = [String]()
    if n <= 0 {
        return res
    }
    res.append("()")
    if n == 1 {
        return res
    }
    while true {
        
        var e: String = res.removeFirst()
        if e.count == n * 2 {
            res.append(e)
            break;
        }
        for (idx,c) in e.enumerated() {
            if c == ")" {
                e.insert("(", at: e.index(e.startIndex, offsetBy: idx))
                e.append(")")//最后一个就是)
                if !res.contains(e) {
                    res.append(e)
                }
                e.remove(at: e.index(e.startIndex, offsetBy: idx))//恢复
                e.removeLast()
            }
            if idx == e.count - 1 {
                e.append("(")
                e.append(")")
                res.append(e)
            }
        }
    }
    
    return res
}

generateParenthesis(3)
