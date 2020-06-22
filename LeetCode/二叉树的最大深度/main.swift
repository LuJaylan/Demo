//
//  main.swift
//  二叉树的最大深度
//
//  Created by 鲁俊良 on 2020/5/28.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
        var maxLen = 0
        var arr = Array<TreeNode>()
        if root == nil {
            return 0
        }
        var node = root!
        arr.append(node)
        while arr.count != 0 {
            let no = arr.popLast()
//            arr.append(no!.left)
//            arr.append(no!.right)
        }
        return maxLen
    }
}

