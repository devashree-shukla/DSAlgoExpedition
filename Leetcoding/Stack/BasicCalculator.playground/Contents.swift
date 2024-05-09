
func calculate(_ s: String) -> Int {
    var result = 0
    var value = 0
    var sign = 1
    var signStack: [Int] = [1]
    
    for char in s {
        if let num = char.wholeNumberValue {
            value = value * 10 + num
        } else if char == "+" || char == "-" {
            result += value * sign
            value = 0
            sign = signStack.last! * (char == "-" ? -1 : 1)
        } else if char == "(" {
            signStack.append(sign)
        } else if char == ")" {
            signStack.removeLast()
        }
    }
    
    return result + value * sign
}

print(calculate("1 + 1"))
