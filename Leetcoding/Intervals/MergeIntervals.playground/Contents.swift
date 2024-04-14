import UIKit

func merge(_ intervals: [[Int]]) -> [[Int]] {
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    var ans:[[Int]] = [sortedIntervals[0]]
    
    for item in sortedIntervals[1..<sortedIntervals.count] {
        if item[0] > ans.last![1] {
            ans.append(item)
        } else {
            ans[ans.count - 1][1] = max(item[1], ans.last![1])
        }
    }
    return ans
}

let intervals = [[1,3],[2,6],[8,10],[15,18]]
print(merge(intervals))
