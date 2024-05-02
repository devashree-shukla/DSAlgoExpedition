func maxOperations(_ nums: [Int], _ k: Int) -> Int {
    var count = 0
    var start = 0
    var end = nums.count - 1
    let sortedNums = nums.sorted()
    while start < end {
        if sortedNums[start] + sortedNums[end] == k {
            count += 1
            start += 1
            end -= 1
        } else if sortedNums[start] + sortedNums[end] < k {
            start += 1
        } else {
            end -= 1
        }
        
    }
    return count
}

print(maxOperations([1,2,3,4], 5))
print(maxOperations([3,1,3,4,3], 6))
print(maxOperations([4,4,1,3,1,3,2,2,5,5,1,5,2,1,2,3,5,4], 2))

