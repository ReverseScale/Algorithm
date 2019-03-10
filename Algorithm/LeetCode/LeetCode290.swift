//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     290. 单词模式
     给定一种 pattern(模式) 和一个字符串 str ，判断 str 是否遵循相同的模式。
     
     这里的遵循指完全匹配，例如， pattern 里的每个字母和字符串 str 中的每个非空单词之间存在着双向连接的对应模式。
     
     示例1:
     
     输入: pattern = "abba", str = "dog cat cat dog"
     输出: true
     示例 2:
     
     输入:pattern = "abba", str = "dog cat cat fish"
     输出: false
     示例 3:
     
     输入: pattern = "aaaa", str = "dog cat cat dog"
     输出: false
     示例 4:
     
     输入: pattern = "abba", str = "dog dog dog dog"
     输出: false
     说明:
     你可以假设 pattern 只包含小写字母， str 包含了由单个空格分隔的小写字母。
     */
    func leetCode290() {
        
        print(wordPattern("abba", "dog cat cat dog"))
        
    }
    
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        if pattern.isEmpty && str.isEmpty { return false }
        let p = Array(pattern)
        let s = str.split(separator: " ")
        var dict = [String : String]()
        if p.count != s.count { return false }
        var i = 0
        while i != p.count {
            if let pre = dict[String(p[i])] {
                if pre != String(s[i]) { return false }
            } else {
                if dict.values.contains(String(s[i])) { return false }
                dict[String(p[i])] = String(s[i])
            }
            i += 1
        }
        return true
    }
}
