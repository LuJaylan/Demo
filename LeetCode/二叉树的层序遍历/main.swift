//
//  main.swift
//  二叉树的层序遍历
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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
   var res = [[Int]]()
   var queue = [TreeNode]()
    if root == nil {
        return res
    }
    queue.append(root!)
    while !queue.isEmpty {
        var item = [Int]()
        var count = queue.count;
        while count > 0 {
            let root = queue.remove(at: 0)
            item.append(root.val)
            if root.left != nil {
                queue.append(root.left!)
            }
            if root.right != nil {
                queue.append(root.right!)
            }
            count = count - 1;
        }
        res.append(item)
    }
    return res
}

