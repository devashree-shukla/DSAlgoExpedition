
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

    func isPalindrome(_ head: ListNode?) -> Bool {
        var stack: [Int] = []
        var curr = head
        while curr != nil {
            stack.append(curr!.val)
            curr = curr?.next
        }
        print(stack)
        curr = head
        while (curr != nil), curr?.val == stack.popLast() {
            curr = curr?.next
        }
        print(stack)
        return stack.isEmpty
    }

let node4 = ListNode(1)
let node3 = ListNode(2, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(1, node2)
print(isPalindrome(node1))

let node44 = ListNode(2)
let node33 = ListNode(2, node44)
let node22 = ListNode(2, node33)
let node11 = ListNode(1, node22)
print(isPalindrome(node11))


