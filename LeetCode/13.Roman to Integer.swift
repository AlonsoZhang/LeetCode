//
//  13.Roman to Integer.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/9.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

func romanToInt(_ s: String) -> Int {
    var result = 0
    let dict = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
    var currentIndex = s.endIndex
    var currentValue = 0
    while currentIndex != s.startIndex {
        let prevIndex = s.index(before: currentIndex)
        let key = String(s[prevIndex])
        let prevValue = dict[key]!
        if prevValue >= currentValue {
            result += prevValue
        } else {
            result -= prevValue
        }
        currentIndex = prevIndex
        currentValue = prevValue
    }
    return result
}
