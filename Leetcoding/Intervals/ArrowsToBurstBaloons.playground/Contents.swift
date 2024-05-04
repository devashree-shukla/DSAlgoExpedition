
func findMinArrowShots(_ points: [[Int]]) -> Int {
    var pts = points.sorted { $0[1] < $1[1] }
    var ans = 1
    var currentBaloon = pts[0][1]
    for b in 1..<pts.count {
        if pts[b][0] > currentBaloon {
            ans += 1
            currentBaloon = pts[b][1]
        }
    }
    return ans
}

print(findMinArrowShots([[10,16],[2,8],[1,6],[7,12]]))
