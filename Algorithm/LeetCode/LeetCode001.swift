//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     1. 两数之和
     给定一个整数数组 nums 和一个目标值 target，请你在该数组中找出和为目标值的那 两个 整数，并返回他们的数组下标。
     
     你可以假设每种输入只会对应一个答案。但是，你不能重复利用这个数组中同样的元素。
     
     示例:
     
     给定 nums = [2, 7, 11, 15], target = 9
     
     因为 nums[0] + nums[1] = 2 + 7 = 9
     所以返回 [0, 1]
     */
    func leetCode001() {
        let arr = [21, 7, 11, 2]
        let result = 9
        
        print(twoSun(arr, result))
        print(twoSunA(arr, result))
    }
    
    /// 01
    func twoSun(_ nums: [Int], _ target: Int) -> [Int] {
        
        var tempDict:[Int:Int] = [:]
        let tempArr = nums.enumerated()
        
        for (index, value) in tempArr {
            
            let tempKey = target - value
            
            // guard 守护
            guard let tempId = tempDict[tempKey] else {
                tempDict[value] = index
                continue
            }
            return [tempId, index]
        }
        return []
    }
    
    /// 02
    func twoSunA(_ nums: [Int], _ target: Int) -> [Int] {
        
        var tempDict:[Int:Int] = [:]
        let tempArr = nums.enumerated()
        
        for (index, value) in tempArr {
            
            let tempKey = target - value
            
            //  if 判断
            if let tempValue = tempDict[tempKey] {
                return [tempValue, index]
            } else {
                tempDict[value] = index
            }
            
        }
        return []
    }
}
