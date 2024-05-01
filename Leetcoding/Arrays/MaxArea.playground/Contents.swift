import UIKit

func maxArea(_ height: [Int]) -> Int {
    var start = 0
    var end = height.count - 1
    var area = 0
    
    while start < end {
        area = max(area, (end - start) * (min(height[start], height[end])))
        if height[start] < height[end] {
            start += 1
        } else {
            end -= 1
        }
    }
    return area
}

print(maxArea([1,8,6,2,5,4,8,3,7]))
