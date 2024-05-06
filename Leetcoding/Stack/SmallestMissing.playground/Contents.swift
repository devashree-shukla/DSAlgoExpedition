
func missingInteger(_ nums: [Int]) -> Int {
    var stack: [Int] = []
    stack.append(nums[0])
    
    for i in 1 ..< nums.count {
        if nums[i] - stack.last! == 1 {
            stack.append(nums[i])
        } else {
            break
        }
    }
    var sum = stack.reduce(0, +)
    while nums.contains(sum) {
        sum = sum + 1
    }
    return sum
}

//print(missingInteger([1,2,3,2,5]))
//print(missingInteger([3,4,5,1,12,14,13]))
print(missingInteger([4,5,6,7,8,8,9,4,3,2,7]))
