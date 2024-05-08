public class TreeNode {
      public var val: Int
      public var left: TreeNode?
      public var right: TreeNode?
      public init() { self.val = 0; self.left = nil; self.right = nil; }
      public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
      public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
          self.val = val
          self.left = left
          self.right = right
      }
  }

class Solution {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var ans: [Int] = []
        inorder(root, a: &a)
        return ans
    }
    
    private func inorder(_ node: TreeNode?, a: inout [Int]) -> [Int] {
        guard let node else { return }
        inorder(node.left, a: &a)
        a.append(node.val)
        inorder(node.right, a: &a)
    }
}

//private func postorder(_ node: TreeNode?, _  a: inout [Int]) {
//        guard let node else { return }
//        postorder(node.left, &a)
//        postorder(node.right, &a)
//        a.append(node.val)
//}

//private func preorder(_ node: TreeNode?, _  a: inout [Int]) {
//    guard let node else { return }
//    a.append(node.val)
//    preorder(node.left, &a)
//    preorder(node.right, &a)
//}
