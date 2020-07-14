//
//  LeetCode11.swift
//  Algorithm
//
//  Created by Tim Hsieh on 2020/7/14.
//  Copyright © 2020 Steven Xie. All rights reserved.
//

import UIKit

extension ViewController {

    func leetCode11() {
        let array = [0,0,1,1,1,2,2,3,3,4]
        print(maxArea02(array))
    }

    func maxArea(_ height: [Int]) -> Int {
        var area = 0
        for i in 0..<height.count {
            for j in i + 1..<height.count {
                let tmpHeight = min(height[i], height[j])
                area = max(area, (j - i) * tmpHeight)
            }
        }
        return area
    }

    func maxArea02(_ height: [Int]) -> Int {
        var area = 0
        var i = 0
        var j = height.count - 1
        while i < j {
            if height[i] < height[j] {
                area = max(area, (j-i) * height[i])
                i += 1
                continue
            } else {
                area = max(area, (j-i) * height[j])
                j -= 1
                continue
            }
        }
        return area
    }
}
