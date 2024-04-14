import UIKit

func subsets(_ nums: [Int]) -> [[Int]] {
    var re = [[Int]]()
    re.append([])
    return nums.reduce(into: re) { r, c in
        r = r + r.map { $0 + [c] }
    }
    
//    var ans: [[Int]] = [[]]
//    var stepCount = 0
//    
//    for i in 0..<nums.count {
//        for i in 0..<nums.count - stepCount {
//            print(stepCount)
//            if stepCount < 1 {
//                ans.append([nums[i]])
//            } else {
//                ans.append([nums[i], nums[i + stepCount]])
//            }
//        }
//        stepCount += 1
//    }
//    
//    if nums.count > 2 {
//        ans.append(nums)
//    }
//    return ans
}

let nums = [1, 2, 3]
print(subsets(nums))
print(subsets([0]))
print(subsets([1, 2]))
print(subsets([3,2,4,1]))
