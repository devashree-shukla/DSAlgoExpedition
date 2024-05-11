
func maximumHappinessSum(_ happiness: [Int], _ k: Int) -> Int {
    var pickedChildWithhappiness = 0
    var picked = k
    var sortedHappiness = happiness.sorted { $0 > $1 }
    while picked > 0, sortedHappiness.count > 0 {
        print(sortedHappiness[0])
        pickedChildWithhappiness += sortedHappiness[0]
        sortedHappiness.remove(at: 0)
        sortedHappiness = sortedHappiness.map { $0 - 1 }.sorted { $0 > $1 }.filter { $0 >= 0 }
        picked -= 1
    }
    return pickedChildWithhappiness
}

//print(maximumHappinessSum([1,2,3], 2))
print(maximumHappinessSum([12,1,42], 3))
