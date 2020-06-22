//
//  main.swift
//  字幕异位词分组
//
//  Created by 鲁俊良 on 2020/6/17.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

//func groupAnagrams(_ strs: [String]) -> [[String]] {
//    var res = [[String]]()
//    var dict = Dictionary<String, Array<String>>.init()
//    for item in strs {
//        let key: String = String(item.sorted())
//        var arr = Array<String>()
//        if dict.keys.contains(key) {
//            arr = dict[key]!
//        }
//        arr.append(item)
//        dict[key] = arr
//    }
//    for item in dict.values {
//        res.append(item)
//    }
//    return res
//}

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var ll = [[String]]()
    var res = Dictionary<[Int], Array<String>>()
    for item in strs {
        let key = stringToArray(item)
        var arr = Array<String>()
        if res.keys.contains(key) {
            arr = res[key]!
        }
        arr.append(item)
        res[key] = arr
    }
    for item in res.values {
        ll.append(item)
    }
    return ll
}

func stringToArray(_ st: String) -> [Int] {
    var res = Array.init(repeating: 0, count: 26)
    for item in st.utf16 {
        res[Int(item) - 97] = res[Int(item) - 97] + 1
    }
    return res
}

groupAnagrams(["ron","huh","gay","tow","moe","tie","who","ion","rep","bob","gte","lee","jay","may","wyo","bay","woe","lip","tit","apt","doe","hot","dis","fop","low","bop","apt","dun","ben","paw","ere","bad","ill","fla","mop","tut","sol","peg","pop","les"])

