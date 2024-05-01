import UIKit

func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
    var sum = 0
    
    for i in 1...9 {
        for j in 1...9 {
            if i == j { continue }
            for k in 1...9 {
                //print(i)
                if j == k { continue }
                if i <= k {
                    sum += i
                }
                if sum <= n {
                    print(mySum(no1: i, no2: j, no3: k, sum: n))
                }
            }
        }
    }
    return []
}

private func mySum(no1: Int, no2: Int, no3: Int, sum: Int) -> [Int] {
    if no1 + no2 + no3 == sum {
        print("hello")
        return [no1, no2, no3]
    }
    return []
}

//print(combinationSum3(3, 7))
//print(combinationSum3(3, 9))
print(combinationSum3(4, 1))
