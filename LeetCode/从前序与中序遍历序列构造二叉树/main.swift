//
//  main.swift
//  从前序与中序遍历序列构造二叉树
//
//  Created by 鲁俊良 on 2020/6/2.
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
    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        var head: TreeNode? = nil
        if preorder.count == 0 {
            return head
        }
    
        var j = 0
        head = TreeNode.init(preorder[0])
        while j < inorder.count {
            if inorder[j] == preorder[0] {
                head!.left = buildTree(Array(preorder[1 ..< j+1]), Array(inorder[0 ..< j]))
                head!.right = buildTree(Array(preorder[j+1 ..< preorder.count]), Array(inorder[j+1 ..< inorder.count]))
            }
            j = j + 1
        }
        return head
    }
}

