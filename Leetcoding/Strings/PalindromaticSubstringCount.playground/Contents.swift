
func countSubstrings(_ s: String) -> Int {
    
    let s = Array(s)
            var answer = 0
            for i in 0..<s.count {
                // try to build palindroms by taking the s[i] char as a center
                // one-lenght palindromes will be counted here
                for j in 0..<s.count {
                    let l = i - j
                    let r = i + j
                    guard l >= 0, r < s.count else { break }
                    guard s[l] == s[r] else { break }
                    print(s[i])
                    print(s[r])
                    print()
                    answer += 1
                }

                // try to build palindroms by taking the center between s[i] and s[i+1]
                for j in 0..<s.count {
                    let l = i - j
                    let r = i + j + 1
                    guard l >= 0, r < s.count else { break }
                    guard s[l] == s[r] else { break }
                    print(s[i])
                    print(s[r])
                    print()
                    answer += 1
                }
            }

            return answer
    
//    var palindromicCount = s.count
//    
//    for i in 0..<s.count {
//        
//    }
//    
//    for i in stride(from: 0, to: s.count, by: 1) {
//        for j in stride(from: 1, to: s.count, by: 1) {
//            if i < j {
//                let str = s[s.index(s.startIndex, offsetBy: i)...s.index(s.startIndex, offsetBy: j)]
//                if str == String(str.reversed()) {
//                    palindromicCount += 1
//                }
//            }
//        }
//    }
//    return palindromicCount
}

//print(countSubstrings("abc"))
print(countSubstrings("aba"))
//print(countSubstrings("aaa"))
//print(countSubstrings("a"))
//print(countSubstrings("aa"))
//print(countSubstrings("aaaaa"))
//print(countSubstrings("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"))
