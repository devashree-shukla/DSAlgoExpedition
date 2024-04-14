import UIKit
import Foundation

func maxProfit(_ prices: [Int]) -> Int {
    var minPrice = Int.max
    var maxprofit = 0
    
    for price in prices {
        minPrice = min(minPrice, price)
        maxprofit = max(maxprofit, price - minPrice)
    }
    return maxprofit
}

let prices = [7,1,5,3,6,4]
maxProfit(prices)
