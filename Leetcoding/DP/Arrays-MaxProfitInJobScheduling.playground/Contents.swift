
func jobScheduling(_ startTime: [Int], _ endTime: [Int], _ profit: [Int]) -> Int {
    let jobs = zip(profit, zip(startTime, endTime)).sorted { $0.1.1 < $1.1.1 }
    var dp: [(profit: Int, endtime: Int)] = [(0, 0)]
    
    for job in jobs {
        if job.1.0 >= dp.last!.endtime {
            let currentProfit = dp.last!.profit + job.0
            dp.append((currentProfit, job.1.1))
        } else {
            var start = 0
            var end = dp.count - 1
            while start < end {
                let mid = (start + end) / 2
                if job.1.0 >= dp[mid].endtime {
                    start = mid + 1
                } else {
                    end = mid
                }
            }
            let lastProfit = dp[start - 1].profit + job.0
            if lastProfit > dp.last!.profit {
                dp.append((lastProfit, job.1.1))
            }
        }
    }
    
    return dp.last!.profit
}

jobScheduling([1,2,3,3], [3,4,5,6], [50,10,40,70])
