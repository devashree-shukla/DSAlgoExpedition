import UIKit

//func missingNumber(_ nums: [Int]) -> Int {
//    var missingNumber = nums.count
//    for (i, num) in nums.enumerated() {
//        missingNumber ^= i ^ num
//    }
//    return missingNumber
//}

func missingNumber(_ nums: [Int]) -> Int {
    let array = Array(0...nums.count)
    let numSet = Set(nums)
    let a = Set(array)
    return a.subtracting(numSet).first ?? 0
}

print(missingNumber([3, 1, 0]))
print(missingNumber([1, 0]))
print(missingNumber([9,6,4,2,3,5,7,0,1]))
