//
//  main.swift
//  翻转二叉树
//
//  Created by 鲁俊良 on 2020/5/28.
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
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil || root!.left == nil && root!.right == nil {
            return root;
        }
        let node = root!.right
        root!.right = invertTree(root!.left)
        root!.left = invertTree(node)
        return root
    }
}

