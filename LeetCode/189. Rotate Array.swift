//
//  189. Rotate Array.swift
//  LeetCode
//
//  Created by Alonso on 2018/9/13.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func rotate(_ nums: inout [Int], _ k: Int) {
    let k = k % nums.count
    _reverse(&nums, 0, nums.count - 1)
    _reverse(&nums, 0, k - 1)
    _reverse(&nums, k, nums.count - 1)
}

private func _reverse(_ nums: inout [Int], _ startIdx: Int, _ endIdx: Int) {
    // edge case
    if startIdx < 0 || endIdx > nums.count || startIdx >= endIdx {
        return
    }
    var startIdx = startIdx
    var endIdx = endIdx
    while startIdx < endIdx {
        _swap(&nums, startIdx, endIdx)
        startIdx += 1
        endIdx -= 1
    }
}

private func _swap<T>(_ nums: inout Array<T>, _ p: Int, _ q: Int) {
    (nums[p], nums[q]) = (nums[q], nums[p])
}
