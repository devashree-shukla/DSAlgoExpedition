
func insertionSort(_ array: inout [Int]) {
    
    for j in 1..<array.count {
        var i = j
        while i > 0 && array[i] < array[i - 1] {
            array.swapAt(i, i - 1)
            i -= 1
        }
    }
    
}

var num = [3, 2 ,1, 7, 6, 8]
insertionSort(&num)
print(num)
