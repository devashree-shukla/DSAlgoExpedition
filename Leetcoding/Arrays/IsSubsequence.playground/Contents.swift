import UIKit

func isSubsequence(_ s: String, _ t: String) -> Bool {
    var arrrayS = Array(s)
    for c in t where c == arrrayS.first {
        arrrayS.removeFirst()
    }
    return arrrayS.isEmpty
}

print(isSubsequence("abcx", "ahbgdc"))
print(isSubsequence("axe", "ahbgdc"))
print(isSubsequence("acb", "ahbgdc"))
print(isSubsequence("", "ahbgdc"))
