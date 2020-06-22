//
//  main.swift
//  把二叉树转换为累加树
//
//  Created by 鲁俊良 on 2020/5/30.
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
    var sum = 0
    func convertBST0(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        convertBST(root!.right)
        root!.val = root!.val + sum;
        sum = root!.val
        convertBST(root!.left)
        return root
    }
    
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        }
        var sum = 0
        var stack = Array<TreeNode>()
        var p: TreeNode? = root
    
        while p != nil || !stack.isEmpty {
            while p != nil {
                stack.append(p!)
                p = p!.right
            }
            var node = stack.popLast()
            sum = sum + node!.val
            node!.val = sum
            p = node!.left
        }
        return root
    }
    
}
