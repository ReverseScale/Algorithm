//
//  LeetCode1.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     3. 无重复字符的最长子串
     给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
     
     示例 1:
     
     输入: "abcabcbb"
     输出: 3
     解释: 因为无重复字符的最长子串是 "abc"，所以其长度为 3。
     示例 2:
     
     输入: "bbbbb"
     输出: 1
     解释: 因为无重复字符的最长子串是 "b"，所以其长度为 1。
     示例 3:
     
     输入: "pwwkew"
     输出: 3
     解释: 因为无重复字符的最长子串是 "wke"，所以其长度为 3。
     请注意，你的答案必须是 子串 的长度，"pwke" 是一个子序列，不是子串。

     */
    func leetCode3() {
        let str = "abcabcbb"
        print(lengthOfLongestSubstring(str))
    }
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var dic: [Character:Int] = [:]
        var head: Int = 0
        var length = 0
        
        for (index, value) in s.enumerated() {
            if let temp = dic[value] {
                head = max(temp + 1, head)
            }
            length = max(length, index - head + 1)
            dic[value] = index
        }
        
        return length
    }

}
