//
//  LeetCode26.swift
//  Algorithm
//
//  Created by Tim Hsieh on 2020/7/14.
//  Copyright © 2020 Steven Xie. All rights reserved.
//

import UIKit

extension ViewController {

    func leetCode26() {
        var array = [0,0,1,1,1,2,2,3,3,4]
        print(removeDuplicates02(&array))
    }

    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        var lastIndex = 0
        let count = nums.count
        for currentIndex in 1..<count {
            if nums[currentIndex] != nums[lastIndex] {
                lastIndex += 1
                nums[lastIndex] = nums[currentIndex]
            }
        }
        return lastIndex + 1
    }

    func removeDuplicates02(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }

        let set = Set(nums)
        nums = Array(set)
        nums.sort()
        print(nums)
        return nums.count
    }

    func removeDuplicates03(_ nums: inout [Int]) -> Int {
        let count = nums.count
        if count <= 1 {
            return count
        }
        var k = 0
        for i in 1 ..< count {
           if nums[i] != nums[k] {
               k += 1
               nums[k] = nums[i]
           }
        }
        print(nums)
        return k + 1
    }
}
