//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     206. 反转链表
     反转一个单链表。
     
     示例:
     
     输入: 1->2->3->4->5->NULL
     输出: 5->4->3->2->1->NULL
     进阶:
     你可以迭代或递归地反转链表。你能否用两种方法解决这道题？
     */
    func leetCode206() {
        
        let l1 = ListNode(1)
        let l2 = ListNode(2)
        let l3 = ListNode(4)
        
        l1.next = l2
        l2.next = l3
        
        print(reverseList(l1) ?? ListNode(0))
    }
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        var previous: ListNode? = nil
        var current: ListNode? = head
        
        while current != nil {
            let temp = current!.next
            current!.next = previous
            
            previous = current
            current = temp
        }
        return previous
    }
}
