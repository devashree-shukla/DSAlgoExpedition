import UIKit

func countBits(_ n: Int) -> [Int] {
    var ans: [Int] = []
    for i in 0...n {
        ans += [countOnes(String(i, radix: 2))]
    }
    return ans
}

private func countOnes(_ s: String) -> Int {
    var hammingWeight = 0
    for i in s {
        if i == "1" {
            hammingWeight += 1
        }
    }
    return hammingWeight
}

print(countBits(2))
print(countBits(5))
