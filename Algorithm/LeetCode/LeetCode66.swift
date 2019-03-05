//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     66. 加一
     给定一个由整数组成的非空数组所表示的非负整数，在该数的基础上加一。
     
     最高位数字存放在数组的首位， 数组中每个元素只存储一个数字。
     
     你可以假设除了整数 0 之外，这个整数不会以零开头。
     
     示例 1:
     
     输入: [1,2,3]
     输出: [1,2,4]
     解释: 输入数组表示数字 123。
     
     示例 2:
     
     输入: [4,3,2,1]
     输出: [4,3,2,2]
     解释: 输入数组表示数字 4321。
     */
    func leetCode66() {
        print(plusOne([1, 2, 9]))
    }
    
    func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        digits[digits.count - 1] += 1
        
        print(digits.contains(10))
        
        while digits.contains(10) {
            let i = digits.index(of: 10)!
            digits[i] = 0
            if i - 1 >= 0 {
                digits[i - 1] += 1
            } else {
                var new = [1]
                new.append(contentsOf: digits)
                digits = new
            }
        }
        return digits
    }
}
