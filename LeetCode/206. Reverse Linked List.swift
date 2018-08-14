//
//  206. Reverse Linked List.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/14.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func reverseList(_ head: ListNode?) -> ListNode? {
    var temp: ListNode?
    var first = head
    while first != nil {
        let second = first!.next
        first!.next = temp
        temp = first
        first = second
    }
    return temp
}
