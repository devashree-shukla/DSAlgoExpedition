import UIKit

func isPalindrome(_ s: String) -> Bool {
    let ss = Array(s.lowercased()).filter { $0.isLetter || $0.isNumber }
    return ss.reversed() == ss
}

print(isPalindrome("A man, a plan, a canal: Panama"))
print(isPalindrome("race a car"))
print(isPalindrome(" "))
