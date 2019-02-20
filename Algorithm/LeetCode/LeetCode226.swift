//
//  LeetCode01.swift
//  LeetCode
//
//  Created by Steven Xie on 2019/2/18.
//  Copyright © 2019 Steven Xie. All rights reserved.
//

extension ViewController {
    
    /*
     226. 翻转二叉树
     翻转一棵二叉树。
     
     示例：
     
     输入：
     
            4
          /   \
         2     7
        / \   / \
       1   3 6   9
     输出：
     
          4
        /   \
       7     2
      / \   / \
     9   6 3   1
     备注:
     这个问题是受到 Max Howell 的 原问题 启发的 ：
     
     谷歌：我们90％的工程师使用您编写的软件(Homebrew)，但是您却无法在面试时在白板上写出翻转二叉树这道题，这太糟糕了。
     */
    func leetCode226() {
        
        
        let invertListData = [1, 2, 10, 8, 3, 4, 5, 6, 7, 9]
        
        let invertNode = TreeNode.creatTree(values: invertListData)
        print(invertNode)
        
        let resultTree = invertTree(invertNode)
        print(resultTree!)

    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        if root == nil {
            return root
        } else {
            let temp = root?.left
            root?.left = invertTree(root?.right)
            root?.right = invertTree(temp)
            return root
        }
    }
    
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
        
        class func creatTree(values:[Int]) -> TreeNode {
            var root: TreeNode?
            for i in 0..<values.count {
                let value = values[i]
                root = TreeNode.addTreeNode(treeNode: root, value: value)
            }
            return root!
        }
        
        private class func addTreeNode(treeNode: TreeNode?, value:Int) -> TreeNode? {
            var root = treeNode
            if root == nil {
                root = TreeNode.init(value)
                print("node: \(value)")
            } else if value <= root!.val {
                print("to left")
                root?.left = TreeNode.addTreeNode(treeNode: root?.left, value: value)
            } else {
                print("to right")
                root?.right = TreeNode.addTreeNode(treeNode: root?.right, value: value)
            }
            return root
        }
    }
    
}
