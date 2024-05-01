import UIKit

func kidsWithCandies(_ candies: [Int], _ extraCandies: Int) -> [Bool] {
    let max = candies.max()
    var ans2: [Bool] = candies.compactMap { $0 + extraCandies >= max! }
    return ans2
}

let candies = [2,3,5,1,3]
let extraCandies = 3
print(kidsWithCandies(candies, extraCandies))
print(kidsWithCandies([4,2,1,1,2], 1))
print(kidsWithCandies([12,1,12], 10))
