
func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    
    for i in 0..<n {
        
        for j in 0..<(n - i - 1) {
            
            if array[j] > array[j + 1] {
//                let temp = array[j]
//                array[j] = array[j + 1]
//                array[j + 1] = temp
                
                array.swapAt(j, j + 1)
            }
            
        }
        
    }
        
}

var num = [3, 2, 1, 7, 6, 8]
bubbleSort(&num)
print(num)
