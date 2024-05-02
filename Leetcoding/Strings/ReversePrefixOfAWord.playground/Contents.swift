import UIKit

func reversePrefix(_ word: String, _ ch: Character) -> String {
    guard let firstOccurence = word.firstIndex(of: ch) else { return word }
    var ans = ""
    for i in 0...word.distance(from: word.startIndex, to: firstOccurence) {
        let index = word.distance(from: word.startIndex, to: firstOccurence) - i
        ans.append(word[word.index(word.startIndex, offsetBy: index)])
    }
    ans.append(contentsOf: word.suffix(from: firstOccurence).dropFirst())
    return ans
}

print(reversePrefix("abcdefd", "d"))
print(reversePrefix("abcdefd", "x"))
print(reversePrefix("xyxzxe", "z"))
print(reversePrefix("abcd", "z"))
