//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     344. 反转字符串
     编写一个函数，其作用是将输入的字符串反转过来。输入字符串以字符数组 char[] 的形式给出。
     
     不要给另外的数组分配额外的空间，你必须原地修改输入数组、使用 O(1) 的额外空间解决这一问题。
     
     你可以假设数组中的所有字符都是 ASCII 码表中的可打印字符。
     
     示例 1：
     
     输入：["h","e","l","l","o"]
     输出：["o","l","l","e","h"]
     
     示例 2：
     
     输入：["H","a","n","n","a","h"]
     输出：["h","a","n","n","a","H"]

     */
    func leetCode344() {

        print(reverseStringFunc("hello"))
        
        print(reverseStringFL("hellolll"))
        
        print(reverseStringL("helloooo"))

    }
    
    func reverseStringFunc(_ s: String) -> String {
         return String(s.reversed())
    }
    
    /// while + 首尾对调
    func reverseStringFL(_ s: String) -> String {
        var stringArray = Array(s)
        var i = 0
        var j = s.count - 1
        
        while i < j {
            let temp = stringArray[i]
            stringArray[i] = stringArray[j]
            stringArray[j] = temp
            i+=1
            j-=1
        }
        
        return String(stringArray)
    }
    
    /// last -> new
    func reverseStringL(_ s: String) -> String {
        var index = s.endIndex
        var result = ""
        
        while index != s.startIndex {
            index = s.index(before: index)
            result.append(s[index])
        }
        return result
    }
}
