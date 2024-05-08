
public class ListNode {
      public var val: Int
      public var next: ListNode?
      public init() { self.val = 0; self.next = nil; }
      public init(_ val: Int) { self.val = val; self.next = nil; }
      public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func removeNodes(_ head: ListNode?) -> ListNode? {
       guard var head else { return head }
        var stack = [head]
        while let next = head.next {
            while let last = stack.last {
                guard next.val > last.val else { break }
                stack.removeLast()
            }
            stack.last?.next = next
            stack.append(next)
            head = next
        }
        stack.last?.next = nil
        return stack.first
//    guard let head else { return nil }
//    head.next = removeNodes(head.next)
//    if head.val < head.next!.val {
//        return head.next
//    } else {
//        return head
//    }
}

let node5 = ListNode(8)
let node4 = ListNode(3, node5)
let node3 = ListNode(13, node4)
let node2 = ListNode(2, node3)
let node1 = ListNode(5, node2)
removeNodes(node1)
