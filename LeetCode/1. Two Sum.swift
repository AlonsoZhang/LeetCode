//
//  twoSum.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/9.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

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
