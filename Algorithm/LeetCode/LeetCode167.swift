//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     167. 两数之和 II - 输入有序数组
     给定一个已按照升序排列 的有序数组，找到两个数使得它们相加之和等于目标数。
     
     函数应该返回这两个下标值 index1 和 index2，其中 index1 必须小于 index2。
     
     说明:
     
     返回的下标值（index1 和 index2）不是从零开始的。
     你可以假设每个输入只对应唯一的答案，而且你不可以重复使用相同的元素。
     示例:
     
     输入: numbers = [2, 7, 11, 15], target = 9
     输出: [1,2]
     解释: 2 与 7 之和等于目标数 9 。因此 index1 = 1, index2 = 2 。
     */
    func leetCode167() {
        let arr = [2, 17, 21, 35]
        let result = 37
        
        print(twoSum(arr, result))
        print(twoSumA(arr, result))
    }
    
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var left = 0
        var right = numbers.count - 1
        while left < right {
            if numbers[left] + numbers[right] == target {
                return [left + 1, right + 1]
            } else if numbers[left] + numbers[right] > target {
                right -= 1
            } else {
                left += 1
            }
        }
        return [0, 0]
    }
    
    func twoSumA(_ numbers:[Int], _ target: Int) -> [Int] {
        var first:Int = 1, last:Int = numbers.count
        var sum: Int
        var f:Int, l:Int
        for _ in 0..<numbers.count {
            f = numbers[first - 1]
            l = numbers[last - 1]
            sum = f + l
            let result = sum - target
            if result>0{ last -= 1 }
            else if result<0{ first += 1}
            else {return [first,last]}
        }
        return [first, last]
    }
}
