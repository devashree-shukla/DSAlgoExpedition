import UIKit

func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var ans = ""
    
    for (char1, char2) in zip(word1, word2) {
        ans += "\(char1)\(char2)"
    }
    
    if word1.count > word2.count {
        ans += word1[word2.endIndex...]
    }
    
    if word1.count < word2.count {
        ans += word2[word1.endIndex...]
    }
    
//    let word1Count = word1.count
//    let word2Count = word2.count
//    var ans = ""
//    if word1Count == word2Count {
//        for i in stride(from: 0, to: word1Count, by: 1) {
//            ans.append("\(Array(word1)[i])\(Array(word2)[i])")
//        }
//    } else if word1Count > word2Count {
//        for i in stride(from: 0, to: word2Count, by: 1) {
//            ans.append("\(Array(word1)[i])\(Array(word2)[i])")
//        }
//        ans += word1[word2.endIndex...]
//    } else {
//        for i in stride(from: 0, to: word1Count, by: 1) {
//            ans.append("\(Array(word1)[i])\(Array(word2)[i])")
//        }
//        ans += word2[word1.endIndex...]
//    }
    return ans
}

print(mergeAlternately("abc", "def"))
print(mergeAlternately("abcd", "ef"))
print(mergeAlternately("ab", "def"))
