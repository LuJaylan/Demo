//
//  main.swift
//  路径总和IIII
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
    func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
        if root == nil {
            return 0
        }
        return dfs(root, sum) + pathSum(root!.left, sum) + pathSum(root!.right, sum)
    }
    
    func dfs(_ root: TreeNode?, _ sum: Int) -> Int {
        var sum = sum
        if root == nil {
            return 0
        }
        sum = sum - root!.val
        return (sum == 0 ? 1 : 0) + dfs(root!.left, sum) + dfs(root!.right, sum)
    }
}

