//
//  26. Remove Duplicates.swift
//  LeetCode
//
//  Created by Alonso on 2018/9/12.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard nums.count > 0 else {
        return 0
    }
    var index = 0
    for num in nums where num != nums[index] {
        index += 1
        nums[index] = num
    }
    nums.removeSubrange(index + 1 ..< nums.count)
    return index + 1
}
