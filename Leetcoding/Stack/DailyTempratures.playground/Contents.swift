
func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
    var stack: [Int] = []
    var nextGreater = Array(repeating: 0, count: temperatures.count)
    
    for i in 0 ..< temperatures.count {
        while !stack.isEmpty && temperatures[stack.last!] < temperatures[i] {
            let temp = stack.popLast()!
            nextGreater[temp] = i - temp
        }
        stack.append(i)
    }
    
    return nextGreater
}

print(dailyTemperatures([73,74,75,71,69,72,76,73]))
