

func findMaxK(_ nums: [Int]) -> Int {
    let nums = Set(nums)
    return nums.filter { nums.contains(-1 * $0) }.max() ??  -1
}

print(findMaxK([-1,2,-3,3]))
