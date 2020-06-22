//
//  main.swift
//  最近公共祖先
//
//  Created by 鲁俊良 on 2020/6/12.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation


// Definition for a binary tree node.
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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil || p === root || q === root {
            return root
        }
        let left = lowestCommonAncestor(root!.left, p, q)
        let righ = lowestCommonAncestor(root!.right, p, q)
        if righ != nil && left != nil {
            return root
        }
        return left == nil ? righ : left
        
    }
}

