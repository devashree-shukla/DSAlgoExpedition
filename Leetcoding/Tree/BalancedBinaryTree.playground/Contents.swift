
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

func isBalanced(_ root: TreeNode?) -> Bool {
    return dfs(root).0
}

func dfs(_ root: TreeNode?) -> (Bool, Int) {
        guard root != nil else { return (true, 0) }

        var left = dfs(root?.left)
        var right = dfs(root?.right)

        var isBalanced = left.0 && right.0

        if left.1 - 1 > right.1 || right.1 - 1 > left.1 {
            isBalanced = false
        }

        return (isBalanced, 1 + max(left.1, right.1))
    }
