
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


    func reverseList(_ head: ListNode?) -> ListNode? {
        //Using stack
        var stack: [Int] = []
        var curr = head
        while curr != nil {
            stack.append(curr!.val)
            curr = curr?.next
        }
       curr = head
        while curr != nil {
            curr?.val = stack.last!
            stack.popLast()!
            curr = curr!.next
        }
        return head
        
//        //Using 3 pointer
//        var root = head
//        var previous: ListNode? = nil
//        var temp: ListNode? = nil
//        
//        while root != nil {
//            temp = root?.next
//            root?.next = previous
//            previous = root
//            root = temp
//        }
//        return previous
    }

let node5 = ListNode(5)
let node4 = ListNode(4, node5)
let node3 = ListNode(3, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)
reverseList(node1)!


let node44 = ListNode(2)
let node33 = ListNode(2, node44)
let node22 = ListNode(2, node33)
let node11 = ListNode(1, node22)
reverseList(node11)!



