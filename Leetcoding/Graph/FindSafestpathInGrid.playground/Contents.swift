
func maximumSafenessFactor(_ grid: [[Int]]) -> Int {
    let n = grid.count
    
    var distanceFromThiefs = Array(repeating: Array(repeating: Int.max, count: n), count: n)
    
    // Step 1: Identify thief positions and initialize queue for BFS
    var theifQueueForBFS: [(Int, Int)] = []
    for row in 0..<n {
        for col in 0..<n {
            if grid[row][col] == 1 {
                theifQueueForBFS.append((row, col))
                distanceFromThiefs[row][col] = 0
            }
        }
    }
    
    // Step 2: Calculate minimum Manhattan distances using BFS
    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var index = 0
    while index < theifQueueForBFS.count {
        let (row, col) = theifQueueForBFS[index]
        index += 1
        for (dr, dc) in directions {
            let nr = row + dr, nc = col + dc
            if nr >= 0 && nr < n && nc >= 0 && nc < n {
                if distanceFromThiefs[nr][nc] > distanceFromThiefs[row][col] + 1 {
                    distanceFromThiefs[nr][nc] = distanceFromThiefs[row][col] + 1
                    theifQueueForBFS.append((nr, nc))
                }
            }
        }
    }
    
    // Step 3: Use Dijkstra's algorithm to find the path that maximizes the safeness factor
    var safenessFactor = Array(repeating: Array(repeating: Int.min, count: n), count: n)
    var maxHeap = [(safeness: Int, r: Int, c: Int)]()
    
    safenessFactor[0][0] = distanceFromThiefs[0][0]
    maxHeap.append((safeness: safenessFactor[0][0], r: 0, c: 0))
    
    while !maxHeap.isEmpty {
        maxHeap.sort { $0.safeness > $1.safeness }
        let (currentSafeness, row, col) = maxHeap.removeFirst()
        
        for (dr, dc) in directions {
            let nr = row + dr, nc = col + dc
            if nr >= 0 && nr < n && nc >= 0 && nc < n {
                let newSafeness = min(currentSafeness, distanceFromThiefs[nr][nc])
                if newSafeness > safenessFactor[nr][nc] {
                    safenessFactor[nr][nc] = newSafeness
                    maxHeap.append((safeness: newSafeness, r: nr, c: nc))
                }
            }
        }
    }
    
    return safenessFactor[n - 1][n - 1]
}

maximumSafenessFactor([[1,0,0],[0,0,0],[0,0,1]])
maximumSafenessFactor([[0,0,1],[0,0,0],[0,0,0]])
maximumSafenessFactor([[0,0,0,1],[0,0,0,0],[0,0,0,0],[1,0,0,0]])
