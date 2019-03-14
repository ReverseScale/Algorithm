//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     83. 删除排序链表中的重复元素
     给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
     
     示例 1:
     
     输入: 1->1->2
     输出: 1->2
     示例 2:
     
     输入: 1->1->2->3->3
     输出: 1->2->3
     */
    func leetCode83() {
        
        let l1 = ListNode(1)
        let l2 = ListNode(2)
        let l3 = ListNode(2)
        let l4 = ListNode(4)
        
        l1.next = l2
        l2.next = l3
        l3.next = l4
        
        print(deleteDuplicates(l1) ?? ListNode(0))

    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil { return head }
        head!.next = deleteDuplicates(head!.next)
        return head!.val == head!.next?.val ? head!.next : head
    }
}
