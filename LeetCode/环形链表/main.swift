//
//  main.swift
//  环形链表
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation


//  Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        if head == nil || head!.next == nil {
            return true
        }
        var slow: ListNode? = head
        var quick: ListNode? = head?.next
        while quick !== slow {
            if quick == nil || slow == nil {
                return false
            }
            slow = slow!.next
            quick = quick!.next?.next
            
        }
        return true
    }
}

