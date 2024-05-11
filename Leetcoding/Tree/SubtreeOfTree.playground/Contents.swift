
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

extension TreeNode: Equatable {
  public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
    lhs.val == rhs.val && lhs.left == rhs.left && lhs.right == rhs.right
  }
}

func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
    if root == subRoot {
        return true
    } else if root?.left != nil, isSubtree(root?.left, subRoot) {
        return true
    } else if root?.right != nil, isSubtree(root?.right, subRoot) {
        return true
    }
    return false
}
