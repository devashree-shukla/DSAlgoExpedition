
func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
    return Array(points.sorted(by: { distance($0) < distance($1) })[0..<k])
}

private func distance(_ coordinates: [Int]) -> Double {
    return sqrt(pow(Double(coordinates[0]), 2) + pow(Double(coordinates[1]), 2))
}

kClosest([[1,3],[-2,2]], 1)
