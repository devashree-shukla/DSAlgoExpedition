
func evalRPN(_ tokens: [String]) -> Int {
    var operators = ["+", "-", "*", "/"]
    var stack: [Int] = []
    for i in tokens {
        if operators.contains(i) {
            let a = stack.removeLast()
            let b = stack.removeLast()
            stack.append(perform(b, a, i))
        } else if let num = Int(i) {
            stack.append(num)
        }
    }
    return stack.first!
}

private func perform(_ a: Int, _ b: Int, _ op: String) -> Int {
    switch op {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        print(a)
        print(b)
        return a / b
    default:
        fatalError("Unsupported operation: \(op)")
    }
}

print(evalRPN(["2","1","+","3","*"]))
print(evalRPN(["4","13","5","/","+"]))
print(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))
