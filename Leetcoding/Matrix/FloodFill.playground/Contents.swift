
func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
    if image[sr][sc] == color {
        return image
    }
    var ans = image
    dfs(sr, sc)

    func dfs(_ row: Int, _ col: Int) {
        if row < 0 || col < 0 || row >= image.count || col >= image[0].count ||
            ans[row][col] == color || ans[row][col] != image[sr][sc] {
                return
        }
            
            ans[row][col] = color
            dfs(row-1, col)
            dfs(row, col-1)
            dfs(row+1, col)
            dfs(row, col+1)
        
    }
    return ans
}

print(floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2))
print(floodFill([[0,0,0],[0,0,0]], 0, 0, 0))
print(floodFill([[0,0,0],[0,0,0]], 1, 0, 2))
print(floodFill([[0,0,0],[0,1,0]], 0, 0, 2))
