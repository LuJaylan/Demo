//
//  main.swift
//  回文链表
//
//  Created by 鲁俊良 on 2020/5/30.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation


//Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func isPalindrome(_ head: ListNode?) -> Bool {
        if head == nil || head?.next == nil {
            return true
        }
        var mid = midNode(head)
        let re = reverse(mid!.next)
        var p: ListNode? = head
        var q: ListNode? = re
        while q != nil {
            if p!.val != q!.val {
                return false
            }
            p = p!.next
            q = q!.next
        }
        return true
    }
    /*
     1->2->3->4->5   midNode 3  1->2  4->5
     1->2->3->4->5->6  midNode 3  1->2->3  4->5->6
     */
    func midNode(_ head: ListNode?) ->ListNode? {
        var fast: ListNode?  = head
        var slow: ListNode? = head
        while fast != nil && fast!.next != nil && fast!.next!.next != nil {
            fast = fast!.next!.next
            slow = slow!.next
        }
        return slow
    }
    
    func reverse(_ head: ListNode?) -> ListNode? {
        var pre: ListNode? = nil
        var cur: ListNode? = head
        while cur != nil {
            let node: ListNode? = cur!.next
            cur!.next = pre
            pre = cur
            cur = node
        }
        return pre
    }
}

