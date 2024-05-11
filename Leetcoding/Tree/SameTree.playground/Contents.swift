
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

func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
    guard p?.val == q?.val else { return false }
    if p == nil && q == nil { return true }
    return isSameTree(p?.left, q?.left) &&  isSameTree(p?.right, q?.right)
}

let node3 = TreeNode(3)
let node2 = TreeNode(2)
let node1 = TreeNode(1, node2, node3)

let node33 = TreeNode(3)
let node22 = TreeNode(2)
let node11 = TreeNode(1, node22, node33)

isSameTree(node1, node11)
