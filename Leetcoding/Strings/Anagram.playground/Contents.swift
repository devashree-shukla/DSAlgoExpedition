import UIKit

func isAnagram(_ s: String, _ t: String) -> Bool {
    var dict: [String: Int] = [:]
    if s.count != t.count { return false }
    for i in s {
        if dict[String(i)] == nil {
            dict[String(i)] = 1
        } else {
            dict[String(i)]! += 1
        }
    }
    print(dict)
    for j in t {
        if dict[String(j)] != nil {
            dict[String(j)]! -= 1
        }
    }
    return dict.values.filter { $0 != 0 }.count == 0
//    return dict.values.reduce(0, { partialResult, i in
//        partialResult + i
//    }) == 0
}

//func isAnagram(_ s: String, _ t: String) -> Bool {
//    if s.count != t.count { return false } //Not required
//    return s.sorted() == t.sorted()
//}

//print(isAnagram("anagram", "nagaram"))
//print(isAnagram("rat", "car"))
//print(isAnagram("a", "ab"))
print(isAnagram("aacc", "ccac"))
