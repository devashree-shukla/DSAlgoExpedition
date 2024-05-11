
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

var result = [Int]()
func rightSideView(_ root: TreeNode?) -> [Int] {
    addRighSideView(root, 0)
    return result
}

func addRighSideView(_ root: TreeNode?, _ height:Int) {
    if root == nil {
        return
    }

    if result.count == height {
        result.append(root!.val)
    }
    
    addRighSideView(root?.right, height + 1)
    addRighSideView(root?.left, height + 1)
}
