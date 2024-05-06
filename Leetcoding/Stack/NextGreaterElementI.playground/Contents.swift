func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var hash: [Int: Int] = [:]
    var stack: [Int] = []
    var result: [Int] = Array(repeating: -1, count: nums1.count)
        
    /// store all nums1 element into the hash along with its index
    /// index will be used to fill the result array
    /// so that nums1 order should not break
    for i in nums1.indices {
        hash[nums1[i]] = i
    }
            /// iterate over nums2 array
            for i in nums2.indices {
                let curr = nums2[i]
                /// check stack should not be empty and if curr is greater than last element of stack
                /// remove it from stack
                /// this val has find it's greater value, so update the result array after finding it's index
                while(!stack.isEmpty && curr > stack.last! ) {
                    let val = stack.removeLast()
                    let index = hash[val]!
                    result[index] = curr
                }
                /// if curr is not part of nums1, do not add it into the stack
                /// It is not required to find the solution of this value
                if hash[curr] != nil {
                    stack.append(curr)
                }
            }

            return result
}

print(nextGreaterElement([4,1,2], [1,3,4,2]))
print(nextGreaterElement([2,4], [1,2,3,4]))
