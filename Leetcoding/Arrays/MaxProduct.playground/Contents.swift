import UIKit

func maxProduct(_ nums: [Int]) -> Int {
    guard nums.count > 1 else { return nums[0] }
    var maxProduct = 0
    for i in 0..<nums.count - 1 {
        maxProduct = max(maxProduct, nums[i] * nums[i + 1])
    }
    return maxProduct
}

//print(maxProduct([2, 3, -2, 4]))
//print(maxProduct([-2,0,-1]))
//print(maxProduct([-2]))
print(maxProduct([2, 0]))
