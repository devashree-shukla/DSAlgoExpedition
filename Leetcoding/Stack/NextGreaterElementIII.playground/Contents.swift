
func nextGreaterElement(_ n: Int) -> Int {
    let nextgreater = Int(String(Array(String(n)).reversed()))!
    return nextgreater > n ? nextgreater : -1
}

nextGreaterElement(12)
nextGreaterElement(21)
