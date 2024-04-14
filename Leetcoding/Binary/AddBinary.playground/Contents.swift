import UIKit

func addBinary(_ a: String, _ b: String) -> String {
//    let no1 = Int(a, radix: 2) ?? 0
//    let no2 = Int(b, radix: 2) ?? 0
//    return no1 || no2
    
    var carry = 0
    var result = ""
    var i = a.count - 1
    var j = b.count - 1
    
    while i >= 0 || j >= 0 || carry > 0 {
       let digitA = i >= 0 ? Int(String(a[a.index(a.startIndex, offsetBy: i)]))! : 0
       let digitB = j >= 0 ? Int(String(b[b.index(b.startIndex, offsetBy: j)]))! : 0

       let sum = digitA + digitB + carry
       carry = sum / 2
       result = String(sum % 2) + result

       i -= 1
       j -= 1
    }
    return result
}

print(addBinary("1010", "1011"))
