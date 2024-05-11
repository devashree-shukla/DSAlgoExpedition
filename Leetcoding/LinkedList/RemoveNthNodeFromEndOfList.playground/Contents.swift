public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 

func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
    var fast = head
    for i in 0..<n {
        fast = fast?.next
    }
    
    var slow = head
    while fast != nil && fast?.next?.next != nil {
        fast = fast?.next
        slow = slow?.next
    }
    
    slow?.next = slow?.next?.next
    
    return head
}
