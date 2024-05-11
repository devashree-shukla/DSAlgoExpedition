
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

func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let root = root else { return [] }
    var ans: [[Int]] = []
    var level = [root]
    
    while !level.isEmpty {
        ans.append(level.map { $0.val })
        
        var nextLevel: [TreeNode] = []
        for node in level {
            if let left = node.left {
                nextLevel.append(left)
            }
            if let right = node.right {
                nextLevel.append(right)
            }
        }
        
        level = nextLevel
    }
    return ans
}
