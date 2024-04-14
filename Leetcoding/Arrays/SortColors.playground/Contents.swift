import UIKit

func sortColors(_ nums: inout [Int]) {
    var zeroIndex = 0
    var twoIndex = nums.count - 1
    var i = 0
    while i <= twoIndex {
        if nums[i] == 0, i > zeroIndex {
            nums.swapAt(i, zeroIndex)
            zeroIndex += 1
        } else if nums[i] == 2, i < twoIndex {
            nums.swapAt(i, twoIndex)
            twoIndex -= 1
        } else {
            i += 1
        }
    }
}

func sortColorsWithHashTable(_ nums: inout [Int]) {
    var dict : [Int: Int] = [0:0,1:0,2:0]
    var newArr : [Int] = []
    for num in nums {
        dict[num] = dict[num]! + 1
    }
    for _ in 0..<dict[0]! {
        newArr.append(0)
    }
    for _ in 0..<dict[1]! {
        newArr.append(1)
    }
    for _ in 0..<dict[2]! {
        newArr.append(2)
    }
    nums = newArr
}

func sortColorsWithCountingSort(_ nums: inout [Int]) {
        var zeros = 0
        var ones = 0
        var twos = 0

        for n in nums {
            if n == 0 {
                zeros += 1
            } else if n == 1 {
                ones += 1
            } else {
                twos += 1
            }
        }
        for i in 0..<nums.count {
            if i < zeros {
                nums[i] = 0
            } else if i < (zeros + ones) {
                nums[i] = 1
            } else {
                nums[i] = 2
            }
        }
}


var nums = [0, 1, 0]
//print(sortColors(&nums))
//print(nums)

//sortColorsWithHashTable(&nums)
//print(nums)

sortColorsWithCountingSort(&nums)
print(nums)
