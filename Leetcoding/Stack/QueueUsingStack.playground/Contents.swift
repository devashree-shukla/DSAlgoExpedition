
class Stack {
    
    private var element: [Int] = []
    
    func push(_ x: Int) {
        element.append(x)
    }
    
    func pop() -> Int {
        element.removeLast()
    }
    
    func peek() -> Int {
        element.last ?? -1
    }
    
    func empty() -> Bool {
        element.isEmpty
    }
    
}

class MyQueue {

    private var stack1: Stack
    private var stack2: Stack
    
    init() {
            stack1 = Stack()
            stack2 = Stack()
        }
    
    func push(_ x: Int) {
        if stack1.empty() {
            stack1.push(x)
        } else {
            stack2.push(x)
        }
    }
    
    func pop() -> Int {
        let val = stack1.pop()
        if stack1.empty() {
            while !stack2.empty() {
                stack1.push(stack2.pop())
            }
        }
        return val
    }
    
    func peek() -> Int {
        stack1.peek()
    }
    
    func empty() -> Bool {
        stack1.empty()
    }
    
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * let obj = MyQueue()
 * obj.push(x)
 * let ret_2: Int = obj.pop()
 * let ret_3: Int = obj.peek()
 * let ret_4: Bool = obj.empty()
 */
