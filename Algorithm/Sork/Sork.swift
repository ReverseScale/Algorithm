//
//  Sork.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    /// 0218a
    func simpleSort() {
        let arr = [2,5,11,22,3,6,102,21,4]
        
        print(insertSort(arr))
        
        
        let sortByFast_list : [Int] = arr
        let sortByFast_list_count = sortByFast_list.count
        
        let sortByFast_rise = sortByFast(array: sortByFast_list, left: 0, right: sortByFast_list_count-1 , rise: true)
        print(sortByFast_rise)
        
        let sortByFast_reverse = sortByFast(array: sortByFast_list, left: 0, right: sortByFast_list_count-1 , rise: false)
        print(sortByFast_reverse)
    }
    
    /// 简单插入排序
    ///
    /// - Parameter arr: 原始数组
    /// - Returns: 有序数组
    ///
    /// 最好：n-1次比较，0次移动，时间复杂度为O(n)
    /// 最差：n(n-1)/2次比较，n(n-1)/2次移动，时间复杂度为O(n^2)
    func insertSort(_ arr: [Int]) -> [Int] {
        var sortArray = arr;
        
        for i in 1..<sortArray.count {
            
            if sortArray[i] < sortArray[i-1] {
                let temp = sortArray[i];
                
                var index = i;
                for j in (0..<i).reversed() {
                    
                    if sortArray[j] > temp {
                        //如果没找到位置，继续寻找
                        sortArray[j+1] = sortArray[j];
                        
                        //记录位置
                        index = j;
                        continue;
                    }
                }
                
                //找到位置, 插入数值
                sortArray[index] = temp;
            }
        }
        
        return sortArray;
    }
}

/// 快速排序
///
/// - Parameters:
///   - array: 原始数组
///   - left: 左侧
///   - right: 右侧
///   - rise: 是否升序
/// - Returns: 有序数组
func sortByFast(array : [Int], left : Int, right: Int, rise : Bool) -> [Int] {
    guard left < right else {
        return array
    }
    
    var (sortArray, p) = quickSortPartition(array: array, left: left, right: right, rise: rise)
    
    print("left_Sort \(sortArray) left :\(left) right:\(p-1)")
    sortArray = sortByFast(array: sortArray, left: left, right: p-1, rise: rise)
    print("rightSort \(sortArray) left :\(p+1) right:\(right)")
    sortArray = sortByFast(array: sortArray, left: p+1, right: right, rise: rise)
    
    return sortArray
}

/// 快速排序划分数组
///
/// - Parameters:
///   - array: 原始数组
///   - left: 左侧
///   - right: 右侧
///   - rise: 是否升序
/// - Returns: 有序数组
func quickSortPartition(array : [Int], left : Int, right: Int, rise : Bool) ->([Int], Int) {
    var i = left
    var j = right
    let key = array[i]
    
    var sortArray = array
    
    while (i < j) {
        
        while (i < j && (rise ? (key <= sortArray[j]) : (key >= sortArray[j])) ) {
            
            j -= 1;
        }
        guard i < j else {
            continue
        }
        
        sortArray[i] = sortArray[j];
        print(">>>\(sortArray) \(key) \(i)  \(j)")
        
        while (i < j && (rise ? (key >= sortArray[i]) : (key <= sortArray[i])) ) {
            
            i += 1;
        }
        guard i < j else {
            continue
        }
        
        sortArray[j] = sortArray[i];
        print("<<<\(sortArray) \(key) \(i)  \(j)")
    }
    
    sortArray[i] = key;
    
    return (sortArray, i)
}
