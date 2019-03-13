//
//  LeetCode1.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     9. 回文数
     判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
     
     示例 1:
     
     输入: 121
     输出: true
     示例 2:
     
     输入: -121
     输出: false
     解释: 从左向右读, 为 -121 。 从右向左读, 为 121- 。因此它不是一个回文数。
     示例 3:
     
     输入: 10
     输出: false
     解释: 从右向左读, 为 01 。因此它不是一个回文数。
     进阶:
     
     你能不将整数转为字符串来解决这个问题吗？
     */
    func leetCode9() {
//        print(isPalindrome(11122111))
        print(1 % 10)
        print(isPalindromeNotString(101))
    }
    
    func isPalindrome(_ x: Int) -> Bool {
        guard x >= 0 else {
            return false
        }
        var num = String(x)
        while(num.count > 1) {
            guard let first = num.first else { return false }
            guard let last = num.last else { return false }
            guard first == last else { return false }
            num.removeFirst()
            num.removeLast()
        }
        return true
    }
    
    func isPalindromeNotString(_ x: Int) -> Bool {
        if x < 0 || (x > 0 && x % 10 == 0) { return false }
        var x = x
        var half = 0
        
        while x > half {
            half = half * 10 + x % 10
            x /= 10
            
        }
        return half == x || half / 10 == x
    }
    
}
