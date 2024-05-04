
func numRescueBoats(_ people: [Int], _ limit: Int) -> Int {
    var noOfBoat = 0
    var peopleArr = people.sorted()
    var p1 = 0
    var p2 = peopleArr.count - 1
    
    while p1 <= p2 {
        if p1 != p2, peopleArr[p1] + peopleArr[p2] <= limit {
            noOfBoat += 1
            p1 += 1
            p2 -= 1
        } else {
            noOfBoat += 1
            p2 -= 1
        }
            
    }
    return noOfBoat
}

numRescueBoats([1,2], 3)
numRescueBoats([3,2,2,1], 3)
numRescueBoats([3,5,3,4], 3)
