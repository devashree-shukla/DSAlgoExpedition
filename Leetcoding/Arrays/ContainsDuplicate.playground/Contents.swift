import UIKit

func containsDuplicate(_ nums: [Int]) -> Bool {
    let sortedNums = nums.sorted()

    for i in 0 ..< sortedNums.count - 1 {
        if sortedNums[i] == sortedNums[i + 1] {
            return true
        }
    }

    return false
}

//func containsDuplicate(_ nums: [Int]) -> Bool {
//    var dict = [Int: Int]()
//
//    for num in nums {
//        if dict[num] != nil {
//            return true
//        } else {
//            dict[num] = 1
//        }
//    }
//
//    return false
//}

//func containsDuplicate(_ nums: [Int]) -> Bool {
//    nums.count != Set(nums).count
//}

let nums = [1,2,3,1]
print(containsDuplicate(nums))
