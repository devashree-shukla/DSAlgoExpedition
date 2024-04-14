import UIKit

func majorityElement(_ nums: [Int]) -> Int {
    var dict: [Int: Int] = [:]

    for i in nums {
      dict[i, default: 0] += 1
    }
    
    for key in dict.keys {
      if let value: Int = dict[key], value > nums.count / 2 {
        return key
      }
    }
    
    return 0
}

//func majorityElement(_ nums: [Int]) -> Int {
//    var candidate = 0
//    var vote = 0
//
//    for number in nums {
//        if vote == 0 {
//            candidate = number
//        }
//        vote += (number == candidate) ? 1 : -1
//        print(vote)
//    }
//    
//    return candidate
//}

let nums = [2,2,1,1,1,2,2]
print(majorityElement(nums))
