import UIKit

func minWindow(_ s: String, _ t: String) -> String {
    if s.count < t.count { return "" }
    if s == t { return s }
    
    var windowSize = t.count
    let arrS = Array(s)
    var minWindowString = ""
    while windowSize <= s.count {
        for (i, s) in s.enumerated() {
            if i + windowSize < arrS.count {
                if String(arrS[i..<(i + windowSize + 1)]).contains(t) {
                    minWindowString = t //String(arrS[i..<(i + windowSize)])
                    break
                } else if Set(arrS[i..<(i + windowSize + 1)]).isSuperset(of: Set(t)) {
                    minWindowString = String(arrS[i..<(i + windowSize + 1)])
                    break
                } else {
                    continue
                }
            }
        }
        if minWindowString.count > 0 {
            break
        } else {
            windowSize += 1
        }
    }
//    if Set(s).elementsEqual(Set(t)) {
        minWindowString = s
//    }
    return minWindowString
}

//print(minWindow("ADOBECODEBANC", "ABC"))
//print(minWindow("a", "aa"))
//print(minWindow("a", "a"))
//print(minWindow("ab", "a"))
//print(minWindow("ab", "b"))
print(minWindow("abc", "cba"))
