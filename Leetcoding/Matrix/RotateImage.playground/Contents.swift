import UIKit

func rotate(_ matrix: inout [[Int]]) {
    var ans: [[Int]] = []
    for j in stride(from: 0, to: matrix[0].count, by: 1) {
        var ans2: [Int] = []
        for i in stride(from: matrix.count, to: 0, by: -1) {
            ans2.append(matrix[i - 1][j])
            let temp = matrix[i][j]
            matrix[i][j] = matrix[i - 1][j]
            matrix[i - 1][j] = temp
        }
        ans.append(ans2)
    }
    print(matrix)
}

var matrix = [[1,2,3],[4,5,6],[7,8,9]]
rotate(&matrix)

var matrix2 = [[5,1,9,11], [2,4,8,10], [13,3,6,7], [15,14,12,16]]
rotate(&matrix2)
