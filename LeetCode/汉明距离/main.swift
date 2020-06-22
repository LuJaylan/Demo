//
//  main.swift
//  汉明距离
//
//  Created by 鲁俊良 on 2020/5/28.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func hammingDistance(_ x: Int, _ y: Int) -> Int {
    let n = x ^ y;
    return n.nonzeroBitCount;
}

