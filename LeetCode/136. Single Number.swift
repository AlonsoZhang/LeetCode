//
//  136. Single Number.swift
//  LeetCode
//
//  Created by Alonso on 2018/9/18.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func singleNumber(_ nums: [Int]) -> Int {
    var res = 0
    for num in nums {
        res ^= num
    }
    return res
}
