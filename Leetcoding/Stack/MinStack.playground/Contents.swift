
class MinStack {

    var arr: [Int] = []
    var mins: [Int] = []
    
    init() {
     
    }
    
    func push(_ val: Int) {
        let lastMin = mins.last ?? val
        arr.append(val)
        if val <= lastMin {
            mins.append(val)
        }
    }
    
    func pop() {
        let popped = arr.popLast()
        if popped == mins.last! {
            mins.popLast()
        }
    }
    
    func top() -> Int {
        arr.last!
    }
    
    func getMin() -> Int {
        mins.last!
    }
    
}

