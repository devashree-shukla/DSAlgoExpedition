import UIKit

//Given an array of strings strs, group the anagrams together. You can return the answer in any order.
//
//An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.
//
// 
//
//Example 1:
//
//Input: strs = ["eat","tea","tan","ate","nat","bat"]
//Output: [["bat"],["nat","tan"],["ate","eat","tea"]]
//Example 2:
//
//Input: strs = [""]
//Output: [[""]]
//Example 3:
//
//Input: strs = ["a"]
//Output: [["a"]]

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
    //print(dict)
    for j in t {
        if dict[String(j)] != nil {
            dict[String(j)]! -= 1
        }
    }
    return dict.values.filter { $0 != 0 }.count == 0
}

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var ans: [[String]] = []
    for (i, item1) in strs.enumerated() {
        if ans.flatMap { $0 }.contains(item1) { continue }
        var anagrams: [String] = [item1]
        for (j, item2) in strs[1..<strs.count].enumerated() {
            if isAnagram(item1, item2) {
                if !anagrams.contains(item2) {
                    anagrams.append(item2)
                }
            }
        }
        ans.append(anagrams)
    }
    return ans
}

print(groupAnagrams(["eat","tea","tan","ate","nat","bat"]))
print(groupAnagrams([""]))
print(groupAnagrams(["", ""]))
print(groupAnagrams(["a"]))
