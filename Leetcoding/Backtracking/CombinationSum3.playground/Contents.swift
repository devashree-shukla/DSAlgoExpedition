import UIKit

func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    var ans: [[Int]] = []

    backtrack(1, [])
    
    func backtrack(_ start: Int, _ combination: [Int]) {
        let sum = combination.reduce(0, +)
        if combination.count == k, sum == n {
            ans.append(combination)
            return
        } else if combination.count > k || sum > n {
            return
        } else if k >= n {
            return
        }
        
        for i in stride(from: start, to: 10, by: 1) {
            var newCombination = combination
            newCombination.append(i)
            backtrack(i + 1, newCombination)
        }
    }

    return ans
}

print(combinationSum3(3, 7))
print(combinationSum3(3, 9))
print(combinationSum3(4, 1))
