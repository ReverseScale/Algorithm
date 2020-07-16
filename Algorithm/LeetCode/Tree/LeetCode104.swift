//
//  LeetCode104.swift
//  Algorithm
//
//  Created by Tim Hsieh on 2020/7/16.
//  Copyright © 2020 Steven Xie. All rights reserved.
//

import UIKit

extension ViewController {

    func leetCode104() {
        let treeNode = TreeNode.creatTree(values: [3,9,20,15,7])
        print(maxDepth(treeNode))
    }

    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        return 1 + max(maxDepth(root?.left), maxDepth(root?.right))
    }

}
