import UIKit

func permute(_ nums: [Int]) -> [[Int]] {
    guard nums.count > 1 else { return [nums] }
    return nums.indices.flatMap { i in
        permute(Array(nums[0..<i]+nums[i+1..<nums.count])).map { $0 + [nums[i]] }
    }
}

let nums = [1, 2, 3]
print(permute(nums))
