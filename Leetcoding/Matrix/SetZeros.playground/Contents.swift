import UIKit

func setZeroes(_ matrix: inout [[Int]]) {
    var rows: Set<Int> = []
    var cols: Set<Int> = []
    
    for (i, item1) in matrix.enumerated() {
        for (j, item2) in item1.enumerated() {
            if matrix[i][j] == 0 {
                rows.insert(i)
                cols.insert(j)
            }
        }
    }
    
    for i in 0..<matrix.count {
        for j in 0..<matrix[0].count {
            if rows.contains(i) || cols.contains(j) {
                matrix[i][j] = 0
            }
        }
    }
    
    print(matrix)
}

//func setZeroes(_ matrix: inout [[Int]]) {
//    for (i, item1) in matrix.enumerated() {
//        for (j, item2) in item1.enumerated() {
//            if item2 == 0 {
//                print("\(i) \(j)")
//                for k in 0..<matrix[i].count {
//                    matrix[i][k] = 0
//                }
//                for k in 0..<matrix.count {
//                    matrix[k][j] = 0
//                }
//            }
//        }
//    }
//    print(matrix)
//}

var matrix = [[1,1,1],[1,0,1],[1,1,1]]
setZeroes(&matrix)

var matrix2 = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
setZeroes(&matrix2)
