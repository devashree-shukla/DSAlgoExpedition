
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

func isValidBST(_ root: TreeNode?) -> Bool {
    return valid(root, -Int.max, Int.max)
}

func valid(_ node: TreeNode?, _ min: Int, _ max: Int) -> Bool {
    guard let node = node else { return true }
    if !(node.val > min && node.val < max) {
        return false
    }
    return valid(node.left, min, node.val) && valid(node.right, node.val, max)
}
