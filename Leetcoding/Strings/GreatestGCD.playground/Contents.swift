import Foundation

func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        guard str1 + str2 == str2 + str1 else { return "" }
        let gcdLen = gcd(max(str1.count, str2.count), min(str1.count, str2.count))
        return String(str1.prefix(gcdLen))
}

func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let tmp = b
            b = a % b
            a = tmp
        }
        return a
    }

let str1 = "ABCABC", str2 = "ABC"
print(gcdOfStrings(str1, str2))
print(gcdOfStrings("ABABAB", "ABAB"))
print(gcdOfStrings("LEET", "CODE"))
