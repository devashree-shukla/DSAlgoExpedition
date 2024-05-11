
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

func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
    var ans = 0
    maxDepth(root, &ans)
    return ans
}

func maxDepth(_ root: TreeNode?, _ diameter: inout Int) -> Int {
        guard let root else { return 0 }
        let leftDepth = maxDepth(root.left, &diameter)
        let rightDepth = maxDepth(root.right, &diameter)
        diameter = max(diameter, leftDepth + rightDepth)
        return 1 + max(leftDepth, rightDepth)
    }
