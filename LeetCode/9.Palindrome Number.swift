//
//  9. Palindrome Number.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/9.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    guard x >= 0 else {
        return false
    }
    var x = x
    var div = 1
    while (x / div >= 10) {
        div = div * 10
    }
    while (x > 0) {
        let left = x / div
        let right = x % 10
        
        if (left != right) {
            return false
        }
        x = (x % div) / 10
        div = div / 100
    }
    return true
}
