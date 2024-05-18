
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

//2 -> OR
//3 -> AND
func evaluateTree(_ root: TreeNode?) -> Bool {
    guard let r = root else { return false }
    switch r.val {
    case 2:
        return evaluateTree(r.left) || evaluateTree(r.right)
    case 3:
        return evaluateTree(r.left) && evaluateTree(r.right)
    default:
        return r.val == 1
    }
//    if r.val == 0 {
//        return false
//    } else if r.val == 1 {
//        return true
//    } else if r.val == 2 {
//        
//    } else if r.val == 3 {
//        return evaluateTree(r.left) && evaluateTree(r.right)
//    } else {
//        return false
//    }
    
}
