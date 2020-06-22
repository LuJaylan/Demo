//
//  main.swift
//  二叉树的直径
//
//  Created by 鲁俊良 on 2020/5/31.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation


//Definition for a binary tree node.
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
    var maxLen = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        depth(root)
        return maxLen
    }
    
    
    func depth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        let leftH = depth(root!.left)
        let rightH = depth(root!.right)
        maxLen = max(maxLen, leftH + rightH)
        return max(leftH, rightH) + 1
    }
}

