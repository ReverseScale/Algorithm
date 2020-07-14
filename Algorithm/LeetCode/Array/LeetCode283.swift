//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {

    func leetCode283() {
        var array = [0,1,0,3,12]
        print(moveZeroes03(&array))
    }
    
    /*
     283. 移动零
     给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
     
     示例:
     
     输入: [0,1,0,3,12]
     输出: [1,3,12,0,0]
     说明:
     
     必须在原数组上操作，不能拷贝额外的数组。
     尽量减少操作次数。
     */
    
    func moveZeroes(_ nums: inout [Int]) -> [Int] {
        // ---
        let count = nums.count
        nums = nums.filter { $0 != 0 }
        let newCount = nums.count
        for _ in 0..<count - newCount {
            nums.append(0)
        }
        // ---
        return nums
    }
    
    func moveZeroes02(_ nums: inout [Int]) -> [Int] {
        // ---
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                let temp = nums[j]
                nums[j] = nums[i]
                nums[i] = temp
                j += 1
            }
        }
        // ---
        return nums
    }

    func moveZeroes03(_ nums: inout [Int]) -> [Int] {
        // ---
        var j = 0
        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(i, j)
                j += 1
            }
        }
        // ---
        return nums
    }
}
