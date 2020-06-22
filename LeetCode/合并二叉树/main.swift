//
//  main.swift
//  合并二叉树
//
//  Created by 鲁俊良 on 2020/5/28.
//  Copyright © 2020 Jaylan. All rights reserved.
//https://leetcode-cn.com/problems/merge-two-binary-trees/

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

func mergeTrees(_ t1: TreeNode?, _ t2: TreeNode?) -> TreeNode? {
    var node: TreeNode?
    if t1 != nil || t2 != nil {
        let value1 = t1?.val ?? 0
        let value2 = t2?.val ?? 0
        node = TreeNode.init(value1 + value2)
        node!.left = mergeTrees(t1?.left, t2?.left);
        node!.right = mergeTrees(t1?.right, t2?.right)
    }
    return node;
}




