func nextGreaterElements(_ nums: [Int]) -> [Int] {
    /// stack store index of all element in increasing order
    var stack: [Int] = []
    var result = Array(repeating:-1, count: nums.count)

    /// size is double so that we find the next greater number of last element
    for i in 0..<2*nums.count {
        /// if a element comes which is larger than last element of stack
        /// stack needs to be pop till it find the larger element
        /// in such cases, it is the answer for the popup elements
        while(!stack.isEmpty && nums[i%nums.count] > nums[stack.last!]) {
            result[stack.removeLast()] = nums[i%nums.count]
        }
        stack.append(i%nums.count)
    }
    return result
}

print(nextGreaterElements([1,2,1]))
