String manipulation is a common task in programming, often involving operations like searching, sorting, comparing, and transforming text. In Swift, a powerful and intuitive programming language for iOS and macOS development, handling strings is both flexible and efficient. Let's delve into the specifics of palindromes, anagrams, and substring searches, and how they can be implemented in Swift.

## Palindromes

A palindrome is a word, phrase, number, or other sequences of characters that reads the same forward and backward (ignoring spaces, punctuation, and capitalization). In Swift, you can check if a string is a palindrome by comparing it with its reversed version. Here's a simple way to do it:

func isPalindrome(_ string: String) -> Bool {
    let cleanedString = string.lowercased().filter { $0.isLetter }
    return cleanedString == String(cleanedString.reversed())
}
This function first cleans the string by converting it to lowercase and filtering out non-letter characters. Then, it checks if the cleaned string is the same as its reversed version.

## Anagrams

Two strings are anagrams if they contain the same characters in a different order. To determine if two strings are anagrams in Swift, one approach is to compare sorted versions of both strings:

func areAnagrams(_ string1: String, _ string2: String) -> Bool {
    let cleanedString1 = string1.lowercased().filter { $0.isLetter }
    let cleanedString2 = string2.lowercased().filter { $0.isLetter }
    return cleanedString1.sorted() == cleanedString2.sorted()
}
This function cleans and sorts both strings, then compares them. If they are equal, the strings are anagrams.

## Substring Searches

Searching for a substring within a larger string is a common task. Swift's String type includes several methods to perform substring searches. One straightforward way is to use the contains method:

let string = "Hello, World!"
let substring = "World"

if string.contains(substring) {
    print("The string contains the substring.")
} else {
    print("The string does not contain the substring.")
}
For more complex searches, such as finding the range of a substring, you can use the range(of:) method:

if let range = string.range(of: substring) {
    print("Found the substring from \(range.lowerBound) to \(range.upperBound).")
} else {
    print("The substring was not found.")
}
This method returns an optional range. If the substring is found, the range can be used to extract or manipulate parts of the string.

String Matching Algorithms
String matching algorithms are used to find the occurrences of a pattern in a text. Here, we describe three classic algorithms: KMP (Knuth-Morris-Pratt), Boyer-Moore, and Rabin-Karp. For each algorithm, we provide an explanation, time and space complexities, and sample Swift code.

1. Knuth-Morris-Pratt (KMP) Algorithm
Theory: The KMP algorithm improves the naive string matching approach by preprocessing the pattern to create a longest prefix suffix (LPS) array. This array is used to avoid unnecessary comparisons.

Time Complexity:

Preprocessing: 
�
(
�
)
O(m)
Matching: 
�
(
�
)
O(n)
Overall: 
�
(
�
+
�
)
O(n+m)
Space Complexity: 
�
(
�
)
O(m)

Swift Implementation:

swift
Copy code
func computeLPSArray(_ pattern: String) -> [Int] {
    let m = pattern.count
    var lps = Array(repeating: 0, count: m)
    var length = 0
    var i = 1
    let patternArray = Array(pattern)

    while i < m {
        if patternArray[i] == patternArray[length] {
            length += 1
            lps[i] = length
            i += 1
        } else {
            if length != 0 {
                length = lps[length - 1]
            } else {
                lps[i] = 0
                i += 1
            }
        }
    }
    return lps
}

func KMPSearch(_ text: String, _ pattern: String) -> [Int] {
    let n = text.count
    let m = pattern.count
    let lps = computeLPSArray(pattern)
    var result = [Int]()
    var i = 0
    var j = 0
    let textArray = Array(text)
    let patternArray = Array(pattern)

    while i < n {
        if patternArray[j] == textArray[i] {
            i += 1
            j += 1
        }
        if j == m {
            result.append(i - j)
            j = lps[j - 1]
        } else if i < n && patternArray[j] != textArray[i] {
            if j != 0 {
                j = lps[j - 1]
            } else {
                i += 1
            }
        }
    }
    return result
}

let text = "ABABDABACDABABCABAB"
let pattern = "ABABCABAB"
print(KMPSearch(text, pattern))  // Output: [10]
2. Boyer-Moore Algorithm
Theory: The Boyer-Moore algorithm uses two heuristics to skip sections of the text: the bad character heuristic and the good suffix heuristic. This allows the algorithm to often skip large portions of the text.

Time Complexity:

Best Case: 
�
(
�
/
�
)
O(n/m)
Average Case: 
�
(
�
)
O(n)
Worst Case: 
�
(
�
⋅
�
)
O(n⋅m)
Space Complexity: 
�
(
�
)
O(m)

Swift Implementation:

swift
Copy code
func badCharacterHeuristic(_ pattern: String) -> [Character: Int] {
    let m = pattern.count
    var badChar = [Character: Int]()
    let patternArray = Array(pattern)
    
    for i in 0..<m {
        badChar[patternArray[i]] = i
    }
    return badChar
}

func BoyerMooreSearch(_ text: String, _ pattern: String) -> [Int] {
    let n = text.count
    let m = pattern.count
    if m == 0 || n == 0 || m > n {
        return []
    }
    
    let badChar = badCharacterHeuristic(pattern)
    let textArray = Array(text)
    let patternArray = Array(pattern)
    var result = [Int]()
    var s = 0

    while s <= (n - m) {
        var j = m - 1
        while j >= 0 && patternArray[j] == textArray[s + j] {
            j -= 1
        }
        if j < 0 {
            result.append(s)
            s += (s + m < n) ? m - badChar[textArray[s + m]] ?? -1 : 1
        } else {
            s += max(1, j - (badChar[textArray[s + j]] ?? -1))
        }
    }
    return result
}

let textBM = "ABAAABCD"
let patternBM = "ABC"
print(BoyerMooreSearch(textBM, patternBM))  // Output: [4]
3. Rabin-Karp Algorithm
Theory: The Rabin-Karp algorithm uses hashing to find an exact match of the pattern in the text. It computes a hash value for the pattern and for each substring of the text of the same length as the pattern. If the hash values match, it performs a direct comparison to confirm the match.

Time Complexity:

Average Case: 
�
(
�
+
�
)
O(n+m)
Worst Case: 
�
(
�
⋅
�
)
O(n⋅m)
Space Complexity: 
�
(
1
)
O(1)

Swift Implementation:

swift
Copy code
func hash(_ s: String, base: Int, mod: Int) -> Int {
    var hashValue = 0
    for char in s {
        hashValue = (hashValue * base + Int(char.asciiValue!)) % mod
    }
    return hashValue
}

func RabinKarpSearch(_ text: String, _ pattern: String) -> [Int] {
    let base = 256
    let mod = 101
    let n = text.count
    let m = pattern.count
    var result = [Int]()
    
    if m == 0 || n == 0 || m > n {
        return result
    }

    let patternHash = hash(pattern, base: base, mod: mod)
    let textArray = Array(text)
    var textHash = hash(String(textArray[0..<m]), base: base, mod: mod)
    
    for i in 0...(n - m) {
        if textHash == patternHash {
            if String(textArray[i..<i + m]) == pattern {
                result.append(i)
            }
        }
        if i < n - m {
            textHash = (base * (textHash - Int(textArray[i].asciiValue!) * Int(pow(Double(base), Double(m - 1))) % mod) + Int(textArray[i + m].asciiValue!)) % mod
            if textHash < 0 {
                textHash += mod
            }
        }
    }
    return result
}

let textRK = "GEEKS FOR GEEKS"
let patternRK = "GEEK"
print(RabinKarpSearch(textRK, patternRK))  // Output: [0, 10]
Summary
KMP Algorithm: Efficient for patterns with repetitive prefixes, avoids unnecessary comparisons.
Time Complexity: 
�
(
�
+
�
)
O(n+m)
Space Complexity: 
�
(
�
)
O(m)
Boyer-Moore Algorithm: Efficient for long texts with large alphabets, uses heuristics to skip sections of the text.
Time Complexity: 
�
(
�
/
�
)
O(n/m) (best), 
�
(
�
)
O(n) (average), 
�
(
�
⋅
�
)
O(n⋅m) (worst)
Space Complexity: 
�
(
�
)
O(m)
Rabin-Karp Algorithm: Uses hashing for efficient substring comparisons, suitable for multiple pattern matching.
Time Complexity: 
�
(
�
+
�
)
O(n+m) (average), 
�
(
�
⋅
�
)
O(n⋅m) (worst)
Space Complexity: 
�
(
1
)
O(1)
These implementations and explanations should provide a solid foundation for understanding and applying these algorithms in coding interviews.
