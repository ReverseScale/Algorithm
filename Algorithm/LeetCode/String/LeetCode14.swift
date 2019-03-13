//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     14. 最长公共前缀
     编写一个函数来查找字符串数组中的最长公共前缀。
     
     如果不存在公共前缀，返回空字符串 ""。
     
     示例 1:
     
     输入: ["flower","flow","flight"]
     输出: "fl"
     示例 2:
     
     输入: ["dog","racecar","car"]
     输出: ""
     解释: 输入不存在公共前缀。
     说明:
     
     所有输入只包含小写字母 a-z 。
     */
    func leetCode14() {
        
        print(longestCommonPrefix(["flower","flow","flight"]))
        
    }
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        
        guard !strs.isEmpty else {
            return ""
        }
        
        let temp = strs.map {
            Array($0)
        }
        
        print(temp)
        
        for i in 0..<temp[0].count {
            let char = temp[0][i]
            print(char)
            
            for j in 1..<temp.count {
                if i == temp[j].count || temp[j][i] != char {
                    return String(temp[0][0..<i])
                }
            }
        }
        
        return String(temp[0])
    }
}
