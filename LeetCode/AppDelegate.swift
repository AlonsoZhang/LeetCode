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
        
        //1.Two Sum
        let nums = [2, 7, 11, 15]
        let target = 9
        print("1.Two Sum:\(twoSum(nums, target))")
        
        //2.Add Two Numbers
        let l1 = createListNode([2,4,3])
        let l2 = createListNode([5,6,4])
        print("2.Add Two Numbers:\(printListNode(addTwoNumbers(l1: l1, l2)))")
        
        //7.Reverse Integer
        print("7.Reverse Integer:\(reverse(-123))")
        
        //9.Palindrome Number
        print("9.Palindrome Number:\(isPalindrome(123454321))")
        
        //13.Roman to Integer
        print("13.Roman to Integer:\(romanToInt("IV"))")
        
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    

}

