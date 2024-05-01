import UIKit

func myAtoi(_ s: String) -> Int {
        var result: Int = 0
        var isNegative = false
        var s = s.trimmingCharacters(in: .whitespaces)
        
        if s.first == "+" {
            s.removeFirst()
        } else if s.first == "-" {
            isNegative = true
            s.removeFirst()
        }

        for (index,item) in s.enumerated() {
            if item == "+" || item == "-" || !item.isNumber {
                break
            } else if item.isNumber {
                if isNegative {
                    result = result*10 - Int(String(item))!
                } else {
                    result = result*10 + Int(String(item))!
                }
            }

            if result > Int(Int32.max) {
                result = Int(Int32.max)
                break
            } else if result < Int(Int32.min) {
                result = Int(Int32.min)
                break
            }
        }

        return result
    }

//func myAtoi(_ s: String) -> Int {
//    var ss = ""
//    for (i, letter) in s.trimmingCharacters(in: .whitespaces).enumerated() {
//        if (["+", "-"].contains(letter) && i == 0) {
//            if letter == "-" {
//                ss.append(letter)
//            }
//        } else {
//            if letter.isNumber {
//                ss.append(letter)
//            } else {
//                break
//            }
//        }
//    }
//    //print(ss)
////    print(Int(Int32.max))
////    print(Int(Int32.min))
//    var val = Int(ss) ?? ((ss.count > 0 && !ss.contains("-")) ? Int(Int32.max) : ((ss.count == 0 && !ss.contains("-")) ? min(Int(Int32.min), 0) : 0))
//    //print(val)
//    return val >= Int(Int32.max) ? Int(Int32.max) : max(Int(Int32.min), val)
//}

print(myAtoi("42"))
print(myAtoi("-42"))
print(myAtoi(" 42 with words"))
print(myAtoi("-91283472332"))
print(myAtoi("+1"))
print(myAtoi(" -0012a42"))
print(myAtoi("-0012"))
print(myAtoi("20000000000000000000"))
print(myAtoi("words and 987"))
print(myAtoi("+-12"))
print(myAtoi("-+12"))
print(myAtoi("-9223372036854775809"))
