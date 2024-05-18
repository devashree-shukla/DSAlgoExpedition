
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

func removeLeafNodes(_ root: TreeNode?, _ target: Int) -> TreeNode? {
    guard let r = root else { return nil }
    
    if r.left == nil && r.right == nil && r.val == target {
        return nil
    }
    
    r.left = removeLeafNodes(r.left, target)
    r.right = removeLeafNodes(r.right, target)
    
    return r
}
