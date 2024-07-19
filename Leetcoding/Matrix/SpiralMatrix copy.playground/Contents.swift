import UIKit

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    guard !matrix.isEmpty else { return [] }
    
    var rowStart = 0
    var colStart = 0
    var rowEnd = matrix.count - 1
    var colEnd = matrix[0].count - 1
    var ans: [Int] = []
    
    while rowStart <= rowEnd && colStart <= colEnd {
        //Traverse right
        for c in stride(from: colStart, to: colEnd + 1, by: 1) {
//            print(matrix[rowStart][c])
            ans.append(matrix[rowStart][c])
        }
        rowStart += 1
        
        //Traverse down
        for r in stride(from: rowStart, to: rowEnd + 1, by: 1)  {
//            print(matrix[r][colEnd - 1])
            ans.append(matrix[r][colEnd])
        }
        colEnd -= 1
        
        //Travese left
//        rowStart = rowEnd - 1
        if rowStart <= rowEnd {
            for c in stride(from: colEnd, to: colStart - 1, by: -1) {
                ans.append(matrix[rowEnd][c])
            }
        }
        rowEnd -= 1
        
        //Travese up
        if colStart <= colEnd {
            for r in stride(from: rowEnd, to: rowStart - 1, by: -1)  {
                //print(matrix[r][colStart])
                ans.append(matrix[r][colStart])
            }
        }
        colStart += 1
    }
    return ans
}

let matrix = [[1,2,3], [4,5,6], [7,8,9]]
print(spiralOrder(matrix))

let matrix2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
print(spiralOrder(matrix2))

print(spiralOrder([[2,3]]))

print(spiralOrder([[1,2],[3,4]]))
