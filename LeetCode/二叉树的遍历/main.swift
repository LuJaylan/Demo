//
//  main.swift
//  二叉树的遍历
//
//  Created by 鲁俊良 on 2020/5/31.
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
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        if root != nil {
            preorderTraversal(root!.left)
            res.append(root!.val)
            preorderTraversal(root!.right)
        }
        return res
    }
    
    func preorderTraversal0(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        if root == nil {
           return res
        }
        stack.append(root!)
        while !stack.isEmpty {
            let node = stack.popLast()
            res.append(node!.val)
            if node!.right != nil {
                stack.append(node!.right!)
            }
            if node!.left != nil {
                stack.append(node!.left!)
            }
        }
        return res
    }
}

