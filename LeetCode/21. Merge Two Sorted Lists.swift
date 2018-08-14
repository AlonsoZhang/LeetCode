//
//  21. Merge Two Sorted Lists.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/14.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    let dummy = ListNode(0)
    var node = dummy
    var l1 = l1
    var l2 = l2
    while l1 != nil && l2 != nil {
        if l1!.val < l2!.val {
            node.next = l1
            l1 = l1!.next
        } else {
            node.next = l2
            l2 = l2!.next
        }
        node = node.next!
    }
    node.next = l1 ?? l2
    return dummy.next
}
