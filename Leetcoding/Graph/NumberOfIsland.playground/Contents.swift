
func numIslands(_ grid: [[Character]]) -> Int {
    var ans = 0
    var grid = grid
    for i in 0..<grid.count {
        for j in 0..<grid[0].count {
            if grid[i][j] == "1" {
                ans += 1
                dfs(&grid, i, j)
            }
        }
    }
    
    return ans
}

private func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) {
    if i < 0 || i >= grid.count || j < 0 || j >= grid[i].count || grid[i][j] != "1" {
        return
    }
    grid[i][j] = "x"
    dfs(&grid, i + 1, j)
    dfs(&grid, i - 1, j)
    dfs(&grid, i, j + 1)
    dfs(&grid, i, j - 1)
}

numIslands([
    ["1","1","1","1","0"],
    ["1","1","0","1","0"],
    ["1","1","0","0","0"],
    ["0","0","0","0","0"]
  ])

numIslands([
    ["1","1","0","0","0"],
    ["1","1","0","0","0"],
    ["0","0","1","0","0"],
    ["0","0","0","1","1"]
  ])
