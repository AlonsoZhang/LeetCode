//
//  ListNode.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/2.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

func createListNode(_ list:[Int]) -> ListNode?{
    if list.count == 0 {
        return nil;
    }
    let head = ListNode(list.first!)
    var node = head;
    for i in 1..<list.count {
        node.next = ListNode(list[i])
        node = node.next!
    }
    return head;
}

func printListNode(_ listHead:ListNode?) -> String{
    var head = listHead!
    var resStr = ""
    while head.next != nil {
        resStr = resStr.appending(" " + String(head.val))
        head = head.next!
    }
    resStr = resStr.appending(" " + String(head.val))
    return resStr;
}

func addTwoNumbers(l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var carry = 0, l1 = l1, l2 = l2
    let dummy = ListNode(0)
    var node = dummy
    while l1 != nil || l2 != nil || carry != 0 {
        if l1 != nil {
            carry += l1!.val
            l1 = l1!.next
        }
        if l2 != nil {
            carry += l2!.val
            l2 = l2!.next
        }
        node.next = ListNode(carry % 10)
        node = node.next!
        carry = carry / 10
    }
    return dummy.next
}
