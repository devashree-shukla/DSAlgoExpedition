import Foundation

func numSteps(_ s: String) -> Int {
    // Convert the input string to an array of characters
            let binaryString = Array(s)
            let length = binaryString.count
            
            // Initialize the number of operations
            var operations = 0
            var carry = 0
            
            // Traverse the string from the second last character to the first character
            for i in stride(from: length - 1, to: 0, by: -1) {
                // Calculate the digit by adding the current character and carry
                let digit = Int(String(binaryString[i]))! + carry
                
                // If the digit is odd, it requires two operations (add 1 to make it even, then divide by 2)
                if digit % 2 == 1 {
                    operations += 2
                    carry = 1
                } else {
                    // If the digit is even, it only requires one operation (divide by 2)
                    operations += 1
                }
            }
            
            // Add the carry to the number of operations, if any
            return operations + carry
}

numSteps("1101")

let i = "1101"
let j = Int(i)
