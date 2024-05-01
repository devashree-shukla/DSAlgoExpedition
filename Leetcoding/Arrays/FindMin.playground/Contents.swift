import UIKit

func findMin(_ nums: [Int]) -> Int {
//    var min = nums.last ?? 0
//    for i in 0..<(nums.count - 1) {
//        if nums[i] < min {
//            min = nums[i]
//        }
//    }
//    return min
    
    //Alternate
    var left = 0
    var right = nums.count - 1
    
    while left < right {
        let mid = left + (right - left) / 2
        if nums[mid] > nums[right] {
            left = mid + 1
        } else {
            right = mid
        }
    }
    return nums[left]
}

print(findMin([3, 4, 5, 1, 2]))
print(findMin([11,13,15,17]))
print(findMin([4,5,6,7,0,1,2]))
