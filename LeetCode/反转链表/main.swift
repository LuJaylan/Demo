//
//  main.swift
//  反转链表
//
//  Created by 鲁俊良 on 2020/6/9.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func reverseList(_ head: ListNode?) -> ListNode? {
    var pre: ListNode? = nil
    var head:ListNode? = head
    
    while head != nil {
        let temp = head!.next
        head!.next = pre
        pre = head
        head = temp
    }
    return pre
}

