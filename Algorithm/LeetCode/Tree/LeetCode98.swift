//
//  LeetCode98.swift
//  Algorithm
//
//  Created by Tim Hsieh on 2020/7/16.
//  Copyright © 2020 Steven Xie. All rights reserved.
//

import UIKit

extension ViewController {

    func leetCode98() {
        let treeNode = TreeNode.creatTree(values: [3,9,20,15,7])
        print(isValidBST(treeNode))
    }

    func isValidBST(_ root: TreeNode?) -> Bool {
        var current = root
        var stack = [TreeNode]()
        var preValue: Int?

        while current != nil || !stack.isEmpty {
            while let tmp = current {
                stack.append(tmp)
                current = tmp.left
            }

            let node = stack.removeLast()
            if let tmpPreValue = preValue {
                if tmpPreValue >= node.val  {
                    return false
                } else {
                    preValue = node.val
                }
            } else {
                preValue = node.val
            }
            current = node.right
        }
        return true
    }
}
