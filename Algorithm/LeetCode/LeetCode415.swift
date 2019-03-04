//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     415. 字符串相加
     给定两个字符串形式的非负整数 num1 和num2 ，计算它们的和。
     
     注意：
     
     num1 和num2 的长度都小于 5100.
     num1 和num2 都只包含数字 0-9.
     num1 和num2 都不包含任何前导零。
     你不能使用任何內建 BigInteger 库， 也不能直接将输入的字符串转换为整数形式。
     */
    func leetCode415() {
        print(addStrings("1234", "21345"))
    }
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        var arr1:[UnicodeScalar] = num1.unicodeScalars.reversed()
        var arr2:[UnicodeScalar] = num2.unicodeScalars.reversed()

        var result = ""
        var carry = 0
        var index = 0
        
        while index < arr1.count || index < arr2.count {
            var n1 = 0
            var n2 = 0
            
            if index < arr1.count {
                let ch1 = arr1[index];
                n1 = Int(ch1.value) - Int("0".unicodeScalars.first!.value)
            }
            if index < arr2.count {
                let ch2 = arr2[index];
                n2 = Int(ch2.value) - Int("0".unicodeScalars.first!.value)
            }
            
            let sum = n1 + n2 + carry
            result = String(sum % 10) + result
            carry = sum / 10
            index += 1
        }
        if carry > 0 {
            result = String(carry) + result
        }
        
        return result
    }
}
