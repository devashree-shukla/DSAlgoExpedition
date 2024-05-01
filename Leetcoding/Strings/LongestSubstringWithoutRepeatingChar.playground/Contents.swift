import UIKit

func lengthOfLongestSubstring(_ s: String) -> Int {
    guard !s.isEmpty else { return 0 }
    var len = 0, chars = [Character]()
    for c in s {
        if let idx = chars.firstIndex(of: c) {
            chars.removeSubrange(0...idx)
        }
        chars.append(c)
        len = max(len, chars.count)
    }
    return len
}

print(lengthOfLongestSubstring("abcabcbb"))
print(lengthOfLongestSubstring("bbbb"))
print(lengthOfLongestSubstring("pwwkew"))
print(lengthOfLongestSubstring("bwf"))
