
func largestLocal(_ grid: [[Int]]) -> [[Int]] {
    // Determine the size of the resulting matrix
    let size = grid.count - 2
    
    // Create a result matrix with the determined size initialized to 0
    var ans = Array(repeating: Array(repeating: 0, count: size), count: size)
    
    // Iterate over the positions where the largest local value can be computed
    for i in 0..<size {
        for j in 0..<size {
            // Find the maximum value in the local 3x3 grid centered at (i, j)
            var maxLocal = grid[i][j]
            maxLocal = max(maxLocal, grid[i][j + 1], grid[i][j + 2])
            maxLocal = max(maxLocal, grid[i + 1][j], grid[i + 1][j + 1], grid[i + 1][j + 2])
            maxLocal = max(maxLocal, grid[i + 2][j], grid[i + 2][j + 1], grid[i + 2][j + 2])
            
            // Store the maximum value in the result matrix at the corresponding position
            ans[i][j] = maxLocal
        }
    }
            
    // Return the resulting matrix containing the largest local values
    return ans
}

print(largestLocal([[9,9,8,1],[5,6,2,6],[8,2,6,4],[6,2,2,2]]))
