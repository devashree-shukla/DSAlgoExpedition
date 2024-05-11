
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

var sum = 0
func maxPathSum(_ root: TreeNode?) -> Int {
    guard root == nil else {
        return 0
    }
    findPath(root)
    return sum
}

private func findPath(_ root: TreeNode?) -> Int {
    if root == nil { return 0 }
    var leftSum = findPath(root?.left)
    var rightSum = findPath(root?.right)
    
    if leftSum < 0 { leftSum = 0 }
    if rightSum < 0 { rightSum = 0 }
    sum = max(sum, root!.val + leftSum + rightSum)
    return root!.val + max(leftSum, rightSum)
}
