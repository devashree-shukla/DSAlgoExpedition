import UIKit

func maxProduct(_ nums: [Int]) -> Int {
    var ans = Int.min
    var left = 1
    var right = 1
    for i in 0..<nums.count {
        left = (left != 0 ? left : 1) * nums[i]
        right = (right != 0 ? right : 1) * nums[nums.count - i - 1]
        ans = max(ans, max(left, right))
    }
    return ans
}

print(maxProduct([2, 3, -2, 4]))
print(maxProduct([-2,0,-1]))
print(maxProduct([-2]))
print(maxProduct([2, 0]))
