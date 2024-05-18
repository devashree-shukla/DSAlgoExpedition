
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

func distributeCoins(_ root: TreeNode?) -> Int {
   var ans = 0
        private func dfs(_ node: TreeNode?) {
            guard let n = node else { return 0 }
            let leftCoins = dfs(n.left)
            let rightCoins = dfs(n.right)
            ans += abs(leftCoins) + abs(rightCoins)
            return node?.val - 1 + leftCoins + rightCoins
        }
    dfs(root)
    return ans
}


