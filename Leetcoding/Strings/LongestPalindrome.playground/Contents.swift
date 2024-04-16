import UIKit

func longestPalindrome(_ s: String) -> Int {
    var maxCount = 0
    var dict: [Character: Int] = s.reduce(into: [:]) { $0[$1, default: 0] += 1 }
    print(dict)
    for v in dict.values {
        if v % 2 == 0 {
            maxCount += v
        } else {
            maxCount += (v - 1)
        }
    }
    return maxCount < s.count ? maxCount + 1 : maxCount
}

print(longestPalindrome("abccccdd"))
print(longestPalindrome("a"))
