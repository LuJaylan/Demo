//
//  main.swift
//  回文子串
//
//  Created by 鲁俊良 on 2020/6/19.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func countSubstrings(_ s: String) -> Int {
    var res = Array.init(repeating: 0, count: s.count)
    res[0] = 1
    var ch = Array<Character>()
    for item in s {
        ch.append(item)
    }
    for i in 1 ... s.count - 1 {
        if ch[i-1] == ch[i] {
            res[i]  = res[i-1] + 1 + 2 *
        }else {
            res[i]  = res[i-1] + 1
        }
    }
}

func num(s: String) -> Int {
    var ch = Array<Character>()
    for item in s {
        ch.append(item)
    }
    var c = ch.last!
    var count = 0;
    for i in stride(from: s.count - 1, to: -1, by: -1) {
        if c == ch[i] {
            count  = count + 1
        }
    }
}

