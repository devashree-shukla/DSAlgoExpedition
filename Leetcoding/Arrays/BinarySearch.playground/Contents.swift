import UIKit

func search(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1
        while left <= right {
            let middle = (left + right) / 2
            let numAtMiddle = nums[middle]
            if numAtMiddle == target {
                return middle
            } else if numAtMiddle < target {
                left = middle + 1
            } else {
                right = middle - 1
            }
        }
        return -1
}

print(search([-1,0,3,5,9,12], 9))
