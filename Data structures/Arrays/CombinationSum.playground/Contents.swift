
func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var ans = [[Int]]()
    var combination = [Int]()
    backtrack(remain: target, combination: &combination, start: 0, candidates: candidates, ans: &ans)
    return ans
}

private func backtrack(remain: Int, combination: inout [Int], start: Int, candidates: [Int], ans: inout [[Int]]) {
    guard remain >= 0 else { return }
    guard remain != 0 else { ans.append(combination); return }
    
    for i in start ..< candidates.count {
        combination.append(candidates[i])
        backtrack(remain: remain - candidates[i], combination: &combination, start: i, candidates: candidates, ans: &ans)
        combination.removeLast()
    }
}

print(combinationSum([2,3,6,7], 7))
