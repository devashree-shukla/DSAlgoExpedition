
func findRelativeRanks(_ score: [Int]) -> [String] {
    let winnerRanks = Array(0..<score.count).sorted {
        score[$0] > score[$1]
    }
    var result = Array(repeating: "", count: score.count)
    for (rank, index) in winnerRanks.enumerated() {
        switch rank {
        case 0: result[index] = "Gold Medal"
        case 1: result[index] = "Silver Medal"
        case 2: result[index] = "Bronze Medal"
        default: result[index] = "\(rank + 1)"
        }
    }
    return result
}
findRelativeRanks([5,4,3,2,1])
