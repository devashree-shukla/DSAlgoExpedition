import UIKit

func reverseWords(_ s: String) -> String {
    var ss = s.trimmingCharacters(in: .whitespaces).components(separatedBy: " ").filter { $0.count > 0 }
    print(ss)
    guard ss.count != 1 else {
        print("hello")
        print(s.trimmingCharacters(in: .whitespaces).count)
        return s.trimmingCharacters(in: .whitespaces)
    }
    for i in stride(from: 0, to: ss.count - 1, by: 1) {
        if i < ss.count - 1 - i {
            print("\(i) \(ss.count - 1 - i)")
            ss.swapAt(i, ss.count - 1 - i)
        }
    }
    return ss.joined(separator: " ")
}

//let s = "the sky is blue"
//print(reverseWords(s))
//
//let s1 = "  hello world  "
//print(reverseWords(s1))
//
//let s2 = "a good   example"
//print(reverseWords(s2))

print(reverseWords("t "))
