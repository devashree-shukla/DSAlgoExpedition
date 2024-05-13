
func lengthOfLIS(_ nums: [Int]) -> Int {
    let mi = nums.min()!
           let nums = nums.map { $0 - mi }
           var dp = Array(repeating: 0, count: nums.max()! + 1)

           for n in nums {
               dp[n] = (dp[0..<n].max() ?? 0) + 1
           }

           return dp.max()!
}

lengthOfLIS([10,9,2,5,3,7,101,18])
lengthOfLIS([7,7,7,7,7,7,7])
lengthOfLIS([4,10,4,3,8,9])
