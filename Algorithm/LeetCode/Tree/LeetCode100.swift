//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     100. 相同的树
     给定两个二叉树，编写一个函数来检验它们是否相同。
     
     如果两个树在结构上相同，并且节点具有相同的值，则认为它们是相同的。
     
     示例 1:
     
     输入:         1         1
                 / \       / \
                2   3     2   3
     
     [1,2,3],   [1,2,3]
     
     输出: true
     示例 2:
     
     输入:        1          1
                 /           \
                2             2
     
     [1,2],     [1,null,2]
     
     输出: false
     示例 3:
     
     输入:         1         1
                 / \       / \
                2   1     1   2
     
     [1,2,1],   [1,1,2]
     
     输出: false
     */
    func leetCode100() {
        
        let pInvertNode = TreeNode.creatTree(values: [1, 2, 1])
        let qInvertNode = TreeNode.creatTree(values: [1, 1, 2])

        print(isSameTree(pInvertNode, qInvertNode))
        
    }
    
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil { return true }
        
//        guard p != nil && q != nil else {
//            return true
//        }
        
        if let p = p, let q = q, p.val == q.val {
            let c1 = isSameTree(p.left, q.left)
            let c2 = isSameTree(p.right, q.right)
            return c1 && c2
        }
        
        return false
    }
    
}
