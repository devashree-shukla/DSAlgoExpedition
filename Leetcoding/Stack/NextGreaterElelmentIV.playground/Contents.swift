func secondGreaterElement(_ nums: [Int]) -> [Int] {
    var stack1: [Int] = []
    var stack2: [Int] = []
    var nextGreater = Array(repeating: -1, count: nums.count)
    for i in nums.indices {
        var temp: [Int] = []
        
        while !stack2.isEmpty && nums[stack2.last!] < nums[i] {
            nextGreater[stack2.removeLast()] = nums[i]
        }
        
        while !stack1.isEmpty && nums[stack1.last!] < nums[i] {
            temp.append(stack1.removeLast())
        }
        stack2 += temp.reversed()
        stack1.append(i)
    }
    return nextGreater
}

print(secondGreaterElement([2,4,0,9,6]))
