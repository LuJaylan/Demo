//
//  main.swift
//  相交链表
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



func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
    var alen = 0
    var blen = 0
    var head1 = headA
    var head2 = headB
    while head1 != nil || head2 != nil {
        while head1 != nil && head1!.next != nil {
            alen = alen + 1
            head1 = head1!.next
        }
        while head2 != nil && head2!.next != nil {
            blen = blen + 1
            head2 = head2!.next
        }
        if head1 !== head2{
            return nil
        }
    }
    
    var heada = headA
    var headb = headB
    var i = 0
    var interval = 0
    if alen >= blen {
        interval = alen - blen
        while i < interval {
            heada = heada!.next
            i = i+1
        }
    }else {
        interval = blen - alen
        while i < interval {
            headb = headb!.next
            i = i+1
        }
    }
    while heada !== headb {
        heada = heada!.next
        headb = headb!.next
    }
    return heada
}


func createList(_ arr: [Int]) -> ListNode? {
    var list = ListNode.init(0)
    var c: ListNode? = list
    for i in 0 ..< arr.count {
        let node = ListNode.init(arr[i])
        c!.next = node
        c = c!.next
    }
    return list.next
}

let l1 = createList([4,1,8,4,5])
let l2 = createList([5,0,1,8,4,5])

let ll = getIntersectionNode(l1, l2)
