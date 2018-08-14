//
//  14.Longest Common Prefix.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/14.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func longestCommonPrefix(_ strs: [String]) -> String {
    var longestPrefix = [Character]()
    var index = 0
    guard let firstStr = strs.first else {
        return String(longestPrefix)
    }
    let firstStrChars = Array(firstStr)
    let strsChars = strs.map { Array($0) }
    while index < firstStr.count {
        longestPrefix.append(firstStrChars[index])
        for str in strsChars {
            if index >= str.count {
                return String(longestPrefix.dropLast())
            }
            if str[index] != longestPrefix[index] {
                return String(longestPrefix.dropLast())
            }
        }
        index += 1
    }
    return String(longestPrefix)
}
