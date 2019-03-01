//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     35. 搜索插入位置
     给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
     
     你可以假设数组中无重复元素。
     
     示例 1:
     
     输入: [1,3,5,6], 5
     输出: 2
     示例 2:
     
     输入: [1,3,5,6], 2
     输出: 1
     示例 3:
     
     输入: [1,3,5,6], 7
     输出: 4
     示例 4:
     
     输入: [1,3,5,6], 0
     输出: 0

     */
    func leetCode35() {
        print(searchInsert([1, 2, 4, 5, 7], 2))
        print(searchInsert02([1, 2, 4, 5, 7], 9))
    }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        
        while low <= high {
            let mid = (low + high) / 2
            
            if nums[mid] == target {
                return mid
            }
            else if nums[mid] > target {
                high = mid - 1
            }
            else {
                low = mid + 1
            }
        }
        return low
    }
    
    func searchInsert02(_ nums: [Int], _ target: Int) -> Int {
        return nums.map({$0 - target}).filter({$0 < 0}).count
    }
}
