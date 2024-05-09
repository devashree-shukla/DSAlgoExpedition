
func nextGreaterElement(_ n: Int) -> Int {
    var digits = Array(n.description)
             
            var i = digits.count - 2
            var j = digits.count - 1

            while i >= 0 && digits[i + 1] <= digits[i] {
                i -= 1
            }
            
            if i < 0 { return -1 }

            while j >= 0 && digits[j] <= digits[i] {
                j -= 1
            }
            
            digits.swapAt(i, j)
            digits.reverse(from: i + 1)
            
            if let result = Int(String(digits)), result < Int32.max {
                return result
            }
            
            return -1
}

extension Array {
    mutating func reverse(from: Int) {
        var i = from
        var j = count - 1
        while i < j {
            swapAt(i, j)
            i += 1
            j -= 1
        }
    }
}

nextGreaterElement(12)
nextGreaterElement(21)
