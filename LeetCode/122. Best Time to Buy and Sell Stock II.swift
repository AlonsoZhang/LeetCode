//
//  122. Best Time to Buy and Sell Stock II.swift
//  LeetCode
//
//  Created by Alonso on 2018/9/13.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation
func maxProfit(_ prices: [Int]) -> Int {
    var max = 0
    guard prices.count > 1 else {
        return max
    }
    for i in 1..<prices.count where prices[i] > prices[i - 1] {
        max += prices[i] - prices[i - 1]
    }
    return max
}
