
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

func sumNumbers(_ root: TreeNode?) -> Int {
    var res: [String] = []
       func getNumber(_ root: TreeNode?, _ num: String) {
           guard let root = root else { return }
           let num = num + String(root.val)
           if root.left == nil && root.right == nil {
               res.append(num)
           } else {
               getNumber(root.right, num)
               getNumber(root.left, num)
           }
       }
       getNumber(root, "")
       return res.compactMap{ Int($0) }.reduce(0, +)
}
