//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     7. 整数反转
     给出一个 32 位的有符号整数，你需要将这个整数中每位上的数字进行反转。
     
     示例 1:
     
     输入: 123
     输出: 321
     示例 2:
     
     输入: -123
     输出: -321
     示例 3:
     
     输入: 120
     输出: 21
     注意:
     
     假设我们的环境只能存储得下 32 位的有符号整数，则其数值范围为 [−231,  231 − 1]。请根据这个假设，如果反转后整数溢出那么就返回 0。

     */
    func leetCode007() {
        print(reverse(123))
    }
    
    func reverse(_ x: Int) -> Int {
        var temp = x
        var output = 0
        
        while temp != 0 {
            let pop = temp % 10
            temp = temp / 10
            output = output * 10 + pop
            if (output > Int32.max || output < Int32.min) { return 0 }
        }
        
        return output
    }

}
