
func increasingTriplet(_ nums: [Int]) -> Bool {
    var lowest = Int.max
    var secondLow = Int.max
    
    for i in 0 ..< nums.count {
        if nums[i] < lowest {
            lowest = nums[i]
        } else if nums[i] < secondLow {
            secondLow = nums[i]
        }
        
        if secondLow < nums[i] {
            return true
        }
    }
    
    return false
}

print(increasingTriplet([1,2,3,4,5]))
print(increasingTriplet([5,4,3,2,1]))
print(increasingTriplet([2,1,5,0,4,6]))
print(increasingTriplet([1,2,1,3]))
print(increasingTriplet([2,4,-2,-3]))
