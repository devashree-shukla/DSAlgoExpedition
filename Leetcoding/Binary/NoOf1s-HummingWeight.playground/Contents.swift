import UIKit

func hammingWeight(_ n: Int) -> Int {
    let binaryString = String(n, radix: 2)
    var hammingWeight = 0
    for i in binaryString {
        if i == "1" {
            hammingWeight += 1
        }
    }
    return hammingWeight
}

print(hammingWeight(11))
print(hammingWeight(128))
print(hammingWeight(2147483645))

