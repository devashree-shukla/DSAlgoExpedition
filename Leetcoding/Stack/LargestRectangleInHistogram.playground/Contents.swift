
func largestRectangleArea(_ heights: [Int]) -> Int {
    var stack: [Int] = []
    var nextSmaller = Array(repeating: heights.count, count: heights.count)
    var previousSmaller = Array(repeating: -1, count: heights.count)
    
    for i in 0 ..< heights.count {
        while !stack.isEmpty && heights[stack.last!] > heights[i] {
            let stackTop = stack.popLast()!
            nextSmaller[stackTop] = i
        }
        if stack.count > 0 {
            previousSmaller[i] = stack.last!
        }
        stack.append(i)
    }
    
    var ans = 0
    for i in 0 ..< heights.count {
        let currentHeight = heights[i]
        let w = nextSmaller[i] - previousSmaller[i] - 1
        ans = Swift.max(ans, currentHeight * w)
    }
    return ans
}
largestRectangleArea([2,1,5,6,2,3])
