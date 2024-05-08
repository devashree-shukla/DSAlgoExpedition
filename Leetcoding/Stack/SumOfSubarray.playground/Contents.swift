
func subArrayRanges(_ nums: [Int]) -> Int {
    var min = Int.min
    var max = Int.max
    var sum = 0
    for i in 0 ..< nums.count {
        min = nums[i]
        max = nums[i]
        for j in i ..< nums.count {
            min = Swift.min(nums[j], min)
            max = Swift.max(nums[j], max)
            sum += max - min
        }
    }
    
    return sum
}
subArrayRanges([1,2,3])
