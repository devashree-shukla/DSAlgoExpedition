import UIKit

func permute(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 1 else { return [nums] }
    
    var ans: [[Int]] = []
    for i in 0..<nums.count {
        var rest = nums
        var current = rest.remove(at: i)
        for element in permute(rest) {
            ans.append([current] + element)
        }
    }
    return ans
    
    
    
    return nums.indices.flatMap { i in
        permute(Array(nums[0..<i]+nums[i+1..<nums.count])).map { $0 + [nums[i]] }
    }
}

let nums = [1, 2, 3]
print(permute(nums))
