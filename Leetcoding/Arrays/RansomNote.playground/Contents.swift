import UIKit

func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
    var a = Array(magazine)
    for i in ransomNote  {
        if a.contains(i), let ind = a.firstIndex(of: i) {
            a.remove(at: ind)
        } else {
            return false
        }
    }
    return true
}

print(canConstruct("a", "b"))
print(canConstruct("aa", "ab"))
print(canConstruct("aa", "aab"))
print(canConstruct("aab", "baa"))
