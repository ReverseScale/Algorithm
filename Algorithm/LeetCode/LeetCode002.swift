//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     2. 两数相加
     给出两个 非空 的链表用来表示两个非负的整数。其中，它们各自的位数是按照 逆序 的方式存储的，并且它们的每个节点只能存储 一位 数字。
     
     如果，我们将这两个数相加起来，则会返回一个新的链表来表示它们的和。
     
     您可以假设除了数字 0 之外，这两个数都不会以 0 开头。
     
     示例：
     
     输入：(2 -> 4 -> 3) + (5 -> 6 -> 4)
     输出：7 -> 0 -> 8
     原因：342 + 465 = 807
     */
    func leetCode002() {
        
        let l1 = ListNode(2)
        let l2 = ListNode(4)
        let l3 = ListNode(3)

        l1.next = l2
        l2.next = l3
        
        let r1 = ListNode(5)
        let r2 = ListNode(6)
        let r3 = ListNode(4)

        r1.next = r2
        r2.next = r3
        
        print(addTwoNumbers(l1, r1)!.val)
    }
    
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let headNode = ListNode(0)
        var listNode = headNode
        
        var head1: ListNode? = l1
        var head2: ListNode? = l2
        var carry: Int = 0
        
        while head1 != nil || head2 != nil || carry != 0 {
            var sum: Int = carry
            if head1 != nil {
                sum += (head1?.val)!
                head1 = head1?.next
            }
            if head2 != nil {
                sum += (head2?.val)!
                head2 = head2?.next
            }
            
            carry = sum / 10
            
            listNode.next = ListNode(sum % 10)
            listNode = listNode.next!
            
        }
        
        return headNode.next
    }
    
    public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }

}
