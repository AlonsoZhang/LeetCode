//
//  7.Reverse Integer.swift
//  LeetCode
//
//  Created by Alonso on 2018/8/9.
//  Copyright © 2018 Alonso. All rights reserved.
//

import Foundation

func reverse(_ x: Int) -> Int {
    var i = x
    var res = 0
    while i != 0  {
        let max = Int32.max
        if (abs(res) > (max / 10)) {
            return 0;
        }
        res = res * 10 + i % 10
        i = i / 10
    }
    return res
}
