import UIKit

func getSum(_ a: Int, _ b: Int) -> Int {
    if a == 0 {
        return b
    }
    if b == 0 {
        return a
    }
    
    var a = a
    var b = b
    
    while b != 0 {
        let carry = a & b
        a = a ^ b
        b = carry << 1
    }
    
    return a
}

func getSum_Recursive(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : getSum_Recursive(a ^ b, (a & b) << 1)
}

var num1 = 1
var num2 = 2
print(getSum(num1, num2))



print(3.advanced(by: 5))
