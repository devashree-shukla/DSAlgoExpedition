
func trap(_ height: [Int]) -> Int {
//    var water = 0
//            var left = 0
//            var right = height.count - 1
//            var leftMax = height[left]
//            var rightMax = height[right]
//
//            while left < right{
//                if leftMax < rightMax{
//                    left += 1
//                    leftMax = max(leftMax, height[left])
//                    water += leftMax - height[left]
//                } else {
//                    right -= 1
//                    rightMax = max(rightMax, height[right])
//                    water += rightMax - height[right]
//                }
//            }
//            return water
    guard height.count > 1 else { return 0 }
    var stack: [Int] = []
    var result = 0
    
    for i in 0 ..< height.count {
        while !stack.isEmpty, height[stack.last!] < height[i] {
            let stacktop = stack.removeLast()
            if stack.count > 0 {
                let h = Swift.min(height[i], height[stack.last!] - height[stacktop])
                result += (i - stack.last! - 1) * h
            }
        }
        stack.append(i)
    }
    
    return result
}

trap([0,1,0,2,1,0,1,3,2,1,2,1])
