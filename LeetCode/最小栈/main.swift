//
//  main.swift
//  最小栈
//
//  Created by 鲁俊良 on 2020/5/27.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

class MinStack {

    var list = Array<Int>();
    var minList = Array<Int>();
    
    init() {
        
    }
    
    func push(_ x: Int) {
        list.append(x);
        if minList.isEmpty || x<=minList.last! {
            minList.append(x);
        }else {
            minList.append(minList.last!);
        }
    }
    
    func pop() {
        list.popLast();
        minList.popLast();
    }
    
    func top() -> Int {
        return list.last!;
    }
    
    func getMin() -> Int {
        return minList.last!
    }
}

