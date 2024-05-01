import UIKit

func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
    var placed = 0
    var arr = flowerbed
    for (i, pot) in arr.enumerated() where pot != 1 {
        if i - 1 >= 0, arr[i - 1] != 0 { continue }
        if i + 1 < arr.count, arr[i + 1] != 0 { continue }
        placed += 1
        arr[i] = 1
    }
    return placed >= n
}

print(canPlaceFlowers([1,0,0,0,1], 1))
print(canPlaceFlowers([1,0,0,0,1], 2))
print(canPlaceFlowers([1,0,0,0,0,1], 2))
print(canPlaceFlowers([1,0,0,0,0,0,1], 2))
print(canPlaceFlowers([0,0,1,0,1], 1))
