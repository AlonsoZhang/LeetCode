//
//  217. Contains Duplicate.swift
//  LeetCode
//
//  Created by Alonso on 2018/9/18.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func containsDuplicate(_ nums: [Int]) -> Bool {
    return nums.count > Set(nums).count
}
