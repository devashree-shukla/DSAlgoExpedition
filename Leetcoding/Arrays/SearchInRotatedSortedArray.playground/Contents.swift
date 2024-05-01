import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        if nums[left] == target {
            return left
        } else if nums[right] == target {
            return right
        } else {
            left += 1
            right -= 1
        }
    }
    
    return -1
}

print(search([4,5,6,7,0,1,2], 0))
print(search([4,5,6,7,0,1,2], 3))
print(search([1], 0))
