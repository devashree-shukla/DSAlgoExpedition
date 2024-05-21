
func subsetXORSum(_ nums: [Int]) -> Int {
    nums.reduce([Int]()) { p, v in p + p.map { $0 ^ v } + [v] }.reduce(0, +)
}

subsetXORSum([1, 3])
