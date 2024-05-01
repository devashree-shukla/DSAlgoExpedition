import UIKit

func reverseBits(_ n: Int) -> Int {
    let raw = String(n, radix: 2)
    let str = String(repeating: "0", count: 32 - raw.count) + raw
    return Int(String(str.reversed()), radix: 2) ?? -1
}


//print(reverseBits(00000010100101000001111010011100))
 
