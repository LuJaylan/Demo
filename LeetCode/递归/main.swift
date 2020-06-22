//
//  main.swift
//  递归
//
//  Created by 鲁俊良 on 2020/6/3.
//  Copyright © 2020 Jaylan. All rights reserved.
//

import Foundation

func printReverse(_ s: inout String) {
    if s == nil || s.count == 0 {
        return
    }
    let index = s.index(after: s.startIndex)
    var ss = String(s[index ..< s.endIndex])
    printReverse(&ss)
    print(s.first)
}
//
//var s = "12345678"
//printReverse(&s)


func reverseString(_ s: inout [Character]) {
    dd(&s, 0, s.count - 1)
}

func dd(_ s: inout [Character],_ left: Int, _ right: Int) {
    if left >= right {
        return
    }
    let c = s[right]
    s[right] = s[left]
    s[left] = c
    dd(&s, left + 1, right - 1)
}

//var ss: [Character] = ["H","a","n","n","a","h"]
//reverseString(&ss)


// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func swapPairs(_ head: ListNode?) -> ListNode? {
    if head == nil || head!.next == nil {
        return head
    }
    //1->2->3->4
    let node: ListNode? = head!.next
    head!.next = swapPairs(node!.next)
    node!.next = head
    return node
}


func createList(arr: [Int]) -> ListNode? {
    var list = ListNode.init(0)
    var ll = list
    for i in 0 ..< arr.count {
        let node = ListNode.init(arr[i])
        list.next = node
        list = list.next!
    }
    return ll.next
}


var node = createList(arr: [1,2,3,4])

swapPairs(node)
