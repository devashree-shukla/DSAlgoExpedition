import UIKit

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numDict: [Int: Int] = [:]
    var resultArr = [Int]()
    
    for i in 0..<nums.count {
        let j = target - nums[i]
        if let secondInd = numDict[j] {
            resultArr.append(i)
            resultArr.append(secondInd)
            break
        } else {
            numDict[nums[i]] = i
        }
    }
    return resultArr
}

let nums = [2,7,11,15]
let target = 9
print(twoSum(nums, target))
