import UIKit

func isPalindrome(s: [Character], left: Int, right: Int) -> Int {
    var left: Int = left, right: Int = right
    var count: Int = 0

    while 0 <= left, left <= right, right < s.count, s[left] == s[right] {
      //print("\(s[left]) \(s[right])")
        count += 1
      left -= 1
      right += 1
    }

    return count
}

func longestPalindrome(_ s: String) -> String {
    var longestPalindromicString = ""
    let s: [Character] = Array(s)
    
    for i in 0 ..< s.count {
        let odd: Int = isPalindrome(s: s, left: i, right: i)
        let even: Int = isPalindrome(s: s, left: i, right: i+1)
//        if odd || even {
//            longestPalindromicString
//        }
       // result += odd + even
       
    }
    return longestPalindromicString
}

longestPalindrome("babad")


