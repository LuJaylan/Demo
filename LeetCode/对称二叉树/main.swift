//
//  main.swift
//  对称二叉树
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
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return dfs(root, root)
    }
    
    func dfs(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        if left == nil || right == nil {
            return false
        }
        if left!.val == right!.val {
            return dfs(left!.left, right!.right) && dfs(left!.right, right!.left)
        }else {
            return false
        }
    }
}


func isSymmetric(_ root: TreeNode?) -> Bool {
    if root == nil {
        return true
    }
    var lStatic = [TreeNode]()
    var rStatic = [TreeNode]()
    var p = root
    var q = root
    lStatic.append(p!)
    lStatic.append(q!)
    while !lStatic.isEmpty || !rStatic.isEmpty {
        if p == nil || q == nil {
            return false
        }
        if p == nil && q == nil {
           var lN = lStatic.popLast()
           var rN = rStatic.popLast()
            p = lN!.right
            q = rN!.left
        }
        
        if p!.val == p!.val && p!.left != nil && p!.right != nil {
            lStatic.append(p!)
            rStatic.append(p!)
        }else {
            return false
        }
    }
    if lStatic.isEmpty && rStatic.isEmpty {
        return true
    }
    return false
}
