func climbStairs(_ n: Int) -> Int {
        var dp = Array(repeating: -1 , count: n + 1)
        dp[0] = 1
        for i in 1...n{
            dp[i] = dp[i - 1]
            if(i - 2 >= 0){
            dp[i] = dp[i] + dp[i - 2]
            }
        }
         return dp[n]
    }
