//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     58. 最后一个单词的长度
     给定一个仅包含大小写字母和空格 ' ' 的字符串，返回其最后一个单词的长度。
     
     如果不存在最后一个单词，请返回 0 。
     
     说明：一个单词是指由字母组成，但不包含任何空格的字符串。
     
     示例:
     
     输入: "Hello World"
     输出: 5
     */
    func leetCode58() {
        print("Thank you".split(separator: " "))

        print(lengthOfLastWord("Thank you"))
    }
    
    func lengthOfLastWord(_ s: String) -> Int {
        return s.isEmpty ? 0 : s.split(separator: " ").last?.count ?? 0
    }
    
}
