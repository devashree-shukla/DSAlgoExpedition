import UIKit

func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
    var ans: [[Int]] = []
    var new = newInterval
    
    for currentInterval in intervals {
        if newInterval[0] > currentInterval[1] {
            ans.append(currentInterval)
        } else if newInterval[1] < currentInterval[0] {
            ans.append(currentInterval)
        } else {
            new = [min(new[0], currentInterval[0]), max(new[1], currentInterval[1])]
        }
    }
    ans.append(new)
    return ans.sorted { $0[0] < $1[0] }
}
//func insert(_ intervals: [[Int]], _ newInterval: [Int]) -> [[Int]] {
//    var ans: [[Int]] = intervals
//    var ind = 0
//    
//    if intervals.count == 0 { return [newInterval] }
//    
//    for (i, item) in intervals.enumerated() {
//        if item[0] < newInterval[0] {
//            ans.insert(newInterval, at: ind)
//            break
//        } else if item[1] < newInterval[1] {
//            ans[i][1] = max(item[1], newInterval[1])
//        } else if item[1] == newInterval[1] {
//            ans[i][0] = min(item[0], newInterval[0])
//        } else {
//            ans.append(newInterval)
//        }
//    }
//    ans = merge(ans.sorted { $0[0] < $1[0] })
//    return ans
//}

//private func merge(_ intervals: [[Int]]) -> [[Int]] {
//    var ans:[[Int]] = [intervals[0]]
//    
//    for item in intervals[1..<intervals.count] {
//        if item[0] > ans.last![1] {
//            ans.append(item)
//        } else {
//            ans[ans.count - 1][1] = max(item[1], ans.last![1])
//        }
//    }
//    return ans
//}

//let interval[0, 3]))
print(insert([[1,5]], [0, 0]))
print(insert([[1,5]], [0, 6]))
print(insert([[1,3],[6,9]], [2,5]))
print(insert([[1,2],[3,5],[6,7],[8,10],[12,16]], [4, 8]))
print(insert([[1,5]], [1,7]))

//print(merge([[1,3],[2,5],[6,9]]))
