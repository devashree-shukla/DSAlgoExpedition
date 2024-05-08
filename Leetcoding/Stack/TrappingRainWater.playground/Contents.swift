
func trap(_ height: [Int]) -> Int {
    var stack: [Int] = []
    var result = 0
    for i in 0 ..< height.count {
        while !stack.isEmpty, height[stack.last!] <= height[i] {
            let stacktop = stack.popLast()
            if stack.count > 0 {
                let h = Swift.min(height[stack.last!], height[i] - height[stacktop!])
                let w = i - (stack.last! + 1)
                result += h * w
            }
        }
        stack.append(i)
    }
    
    return result
}

trap([0,1,0,2,1,0,1,3,2,1,2,1])
