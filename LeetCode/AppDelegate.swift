//
//  AppDelegate.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/2.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
        //1.two sum
        let nums = [2, 7, 11, 15]
        let target = 9
        print("1.two sum:\(twoSum(nums, target))")
        
        //2.add two numbers
        let l1 = createListNode([2,4,3])
        let l2 = createListNode([5,6,4])
        print("2.add two numbers:\(printListNode(addTwoNumbers(l1: l1, l2)))")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hashTable = [Int:Int]()
        hashTable[nums[0]] = 0
        for i in 1..<nums.count {
            if let index = hashTable[target - nums[i]] {
                return [index,i]
            }
            hashTable[nums[i]] = i
        }
        return [Int]()
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
        //apend last one
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

}

