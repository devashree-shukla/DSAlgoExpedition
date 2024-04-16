import UIKit

let vowels: [Character] = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
func reverseVowels(_ s: String) -> String {
    var ans = Array(s)
    var leftPointer = 0
    var rightPointer = s.count - 1
    let mid = s.count/2
    
    while leftPointer < rightPointer {
        if vowels.contains(ans[leftPointer]) && vowels.contains(ans[rightPointer]) {
            ans.swapAt(leftPointer, rightPointer)
            leftPointer += 1
            rightPointer -= 1
        } else if !vowels.contains(ans[leftPointer]) {
            leftPointer += 1
        } else if !vowels.contains(ans[rightPointer]) {
            rightPointer -= 1
        } else {
            leftPointer += 1
            rightPointer -= 1
        }
    }
    return String(ans)
}

print(reverseVowels("hello"))
print(reverseVowels("leetcode"))
print(reverseVowels("Aa"))
print(reverseVowels("Marge, let's \"went.\" I await news telegram."))
