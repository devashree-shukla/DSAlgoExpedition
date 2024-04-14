import UIKit

func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
    
    let sortedInterval = intervals.sorted { $0[0] < $1[0]}
    var ans: [Int] = sortedInterval[0]
    var removeCount = 0
    
    for (i, item) in sortedInterval.enumerated() {
        if i == 0 { continue }
        
        if ans[1] > item[0] {
            if ans[1] > item[1] {
                ans = item
            }
            removeCount += 1
        } else {
            ans = item
        }
    }
        
    return removeCount
}

//print(eraseOverlapIntervals([[1,2],[1,2],[1,2]]))
//print(eraseOverlapIntervals([[1,2],[2,3]]))
//print(eraseOverlapIntervals([[1,2],[2,3],[3,4],[1,3]]))
print(eraseOverlapIntervals([[1,100],[11,22],[1,11],[2,12]]))
