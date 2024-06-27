//import UIKit

//var text = "abc def"
//var textArr = text.components(separatedBy: " ")
//var ans: [String] = []
//for str in textArr {
//    ans.append(str.reversed())
//}
//print(ans)


func fib(_ prev: Int, _ num: Int) -> Int {
    var fib = prev
    for i in 0..<num {
        fib += fib(fib, num)
    }
    return fib
}
