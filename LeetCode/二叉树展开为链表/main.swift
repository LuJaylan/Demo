//
//  main.swift
//  二叉树展开为链表
//
//  Created by 鲁俊良 on 2020/6/3.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

//  Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    
    func flatten(_ root: TreeNode?) {
        if root == nil {
            return
        }
        flatten(root!.left)
        flatten(root!.right)
        let temp:TreeNode? = root!.right
        root!.right = root!.left
        root!.left = nil
        var root: TreeNode = root!
        while root.right != nil {
            root = root.right!
        }
        root.right = temp;
    }
    
}



