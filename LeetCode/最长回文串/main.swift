//
//  main.swift
//  最长回文子串
//
//  Created by 鲁俊良 on 2020/5/19.
//  Copyright © 2020 Jaylan. All rights reserved.
//https://leetcode-cn.com/problems/longest-palindromic-substring/

import Foundation

func longestPalindrome(_ s: String) -> String {
    let len = s.count;
    var rS = "";
    for item in s {
        rS.insert(item, at: rS.startIndex);
    }
    
    
}

longestPalindrome("asdfsafas");


