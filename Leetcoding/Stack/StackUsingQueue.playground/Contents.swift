
class QueueNode<T> {
    
    let data: T
    var next: QueueNode<T>?
    
    init(data: T) {
        self.data = data
    }
    
}

class Queue<T> {
    private var first: QueueNode<T>?
    private var last: QueueNode<T>?
    
    func push(element: T) {
        let node = QueueNode(data: element)
        node.next = first
        first = node
        if last == nil {
            last = first
        }
    }
    
    func remove() -> T? {
        if first == nil {
            return nil
        }
        let data = first?.data
        first = first?.next
        
        if first == nil {
            last == nil
        }
        
        return data
    }
    
    func peek() -> T? {
        first?.data
    }
    
    func empty() -> Bool {
        first == nil
        
    }
    
}

class MyStack {

    private let queue = Queue<Int>()
    
    func push(_ x: Int) {
        queue.push(element: x)
    }
    
    func pop() -> Int {
        queue.remove() ?? 0
    }
    
    func top() -> Int {
        queue.peek() ?? 0
    }
    
    func empty() -> Bool {
        queue.empty()
    }
    
}
