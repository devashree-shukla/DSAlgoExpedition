import UIKit

func findAnagrams(_ s: String, _ p: String) -> [Int] {
    guard s.count >= p.count else { return [] }
        let s = Array(s)
        let dp = Dictionary(grouping: p) { $0 }.mapValues(\.count)
        var ds = Dictionary(grouping: s[..<(p.count - 1)]) { $0 }.mapValues(\.count)
        return (0..<(s.count - p.count + 1)).reduce(into: [Int]()) { indices, i in
            ds[s[i + p.count - 1], default: 0] += 1
            if ds == dp { indices.append(i) }
            ds[s[i]] = ds[s[i], default: 0] > 1 ? ds[s[i]]! - 1 : nil
        }
}

//print(findAnagrams("cbaebabacd", "abc"))
print(findAnagrams("abab", "ab"))
