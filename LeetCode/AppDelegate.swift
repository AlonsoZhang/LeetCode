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
        print("1. Two Sum:\(twoSum([2, 7, 11, 15], 9))")
        print("2. Add Two Numbers:\(printListNode(addTwoNumbers(l1: createListNode([2,4,3]), createListNode([5,6,4]))))")
        print("7. Reverse Integer:\(reverse(-123))")
        print("9. Palindrome Number:\(isPalindrome(123454321))")
        print("13. Roman to Integer:\(romanToInt("IV"))")
        print("14. Longest Common Prefix:\(longestCommonPrefix(["aaa","aab","aac"]))")
        print("20. Valid Parentheses:\(isValid("{}([])"))")
        print("21. Merge Two Sorted Lists:\(printListNode(mergeTwoLists(createListNode([2,3,5]),createListNode([1,5,6]))))")
        var arr = [0,0,1,1,1,2,2,3,3,4]
        print("26. Remove Duplicates from Sorted Array:\(removeDuplicates(&arr))")
        print("\(arr)")
        print("88. Merge Sorted Array:\(mergeSortedList([1,4,7],[4,5,6,8]))")
        print("122. Best Time to Buy and Sell Stock II:\(maxProfit([1,4,7,4,5,6,8]))")
        print("189. Rotate Array:\(rotate(&arr, 1))")
        print("\(arr)")
        print("344. Reverse String:\(reverseString("abcd"))")
        print("206. Reverse Linked List:\(printListNode(reverseList(createListNode([5,4,3,2,1]))))")
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    

}

