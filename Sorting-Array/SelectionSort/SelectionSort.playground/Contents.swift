
func selectionSort(_ array: inout [Int]) {
    
    for i in 0..<array.count {
        var minIndex = i
        
        for j in i+1..<array.count {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        
        if minIndex != i {
            array.swapAt(i, minIndex)
        }
    }
    
}

var num = [1 ,3 ,2 ,6 ,8 ,7]
selectionSort(&num)
print(num)
