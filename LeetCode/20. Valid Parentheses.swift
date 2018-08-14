//
//  20. Valid Parentheses.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/14.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

func isValid(_ s: String) -> Bool {
    var stack = [Character]()
    for char in s {
        if char == "(" || char == "[" || char == "{" {
            stack.append(char)
        } else if char == ")" {
            guard stack.count != 0 && stack.removeLast() == "(" else {
                return false
            }
        } else if char == "]" {
            guard stack.count != 0 && stack.removeLast() == "[" else {
                return false
            }
        } else if char == "}" {
            guard stack.count != 0 && stack.removeLast() == "{" else {
                return false
            }
        }
    }
    return stack.isEmpty
}
