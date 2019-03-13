//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     21. 合并两个有序链表
     将两个有序链表合并为一个新的有序链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
     
     示例：
     
     输入：1->2->4, 1->3->4
     输出：1->1->2->3->4->4

     */
    func leetCode21() {
        
        let l1 = ListNode(1)
        let l2 = ListNode(2)
        let l3 = ListNode(4)
        
        l1.next = l2
        l2.next = l3
        
        let r1 = ListNode(1)
        let r2 = ListNode(3)
        let r3 = ListNode(4)
        
        r1.next = r2
        r2.next = r3
        
        print(mergeTwoLists(l1, r1) ?? ListNode(0))
        
    }
    
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil { return l2 }
        if l2 == nil { return l1 }
        
        if l1!.val < l2!.val {
            l1!.next = mergeTwoLists(l1!.next, l2)
            return l1
        } else {
            l2!.next = mergeTwoLists(l2!.next, l1)
            return l2
        }
    }
}
