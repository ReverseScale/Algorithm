//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     43. 字符串相乘
     给定两个以字符串形式表示的非负整数 num1 和 num2，返回 num1 和 num2 的乘积，它们的乘积也表示为字符串形式。
     
     示例 1:
     
     输入: num1 = "2", num2 = "3"
     输出: "6"
     示例 2:
     
     输入: num1 = "123", num2 = "456"
     输出: "56088"
     说明：
     
     num1 和 num2 的长度小于110。
     num1 和 num2 只包含数字 0-9。
     num1 和 num2 均不以零开头，除非是数字 0 本身。
     不能使用任何标准库的大数类型（比如 BigInteger）或直接将输入转换为整数来处理。
     */
    func leetCode43() {
        print(multiply("123", "11"))
    }
    
    func multiply(_ num1: String, _ num2: String) -> String {
        let left = num1.map({ Int(String($0))! })
        let right = num2.map({ Int(String($0))! })
        
        print("left:\(left)")
        print("right:\(right)")
        
        let m = left.count
        let n = right.count
        var result = [Int](repeating: 0, count: m + n)
        
        print("result:\(result)")
        
        for i in (0..<m).reversed() {
            print("---:\(i)")
            for j in (0..<n).reversed() {
                print("=:\(j)")
                let mul = left[i] * right[j]
                let pos1 = i + j
                let pos2 = i + j + 1
                let sum = mul + result[pos2]
                
                print("sum:\(sum)")
                
                print("pos1 -> \(sum / 10)")
                result[pos1] += sum / 10
                result[pos2] = sum % 10
                print("pos2 -> \(sum % 10)")
                
                print("--------------")
            }
        }
        
        print("F:\(result)")
        
        var answer = ""
        for i in result {
            if answer.count == 0 && i == 0 {
                continue
            }
            
            answer += "\(i)"
        }
        
        if answer.count == 0 {
            return "0"
        }
        
        return answer
    }
}
