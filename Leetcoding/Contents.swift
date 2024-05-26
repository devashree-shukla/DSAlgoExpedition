//var data: Set<Int> = [1, 2, 3, 4, 5]
//data.insert(6)
//data.remove(2)
//print(data)
//
//var dict: [String: Int] = [:]
//dict["Banana"] = 1
//dict["Apple"] = 2
//print(dict)
//dict.removeValue(forKey: "Banana")
//print(dict)
//
//var dynamicArray: [Int] = []
//print(dynamicArray.capacity)
//dynamicArray += [1]
//print(dynamicArray.capacity)
//dynamicArray.append(2)
//print(dynamicArray.capacity)
//dynamicArray.append(3)
//print(dynamicArray.capacity)
//dynamicArray.append(4)
//print(dynamicArray.capacity)
//dynamicArray.append(5)
//print(dynamicArray.capacity)
//
//for i in 6...15 {
//    dynamicArray.append(i)
//    print(dynamicArray.capacity)
//}
//print("===")
//print(dynamicArray.capacity)
//print("===")
//
//dynamicArray.reserveCapacity(20)
//
//for i in 16...22 {
//    dynamicArray.append(i)
//    print(dynamicArray.capacity)
//}
//print("===")
//print(dynamicArray.capacity)
//print("===")

//Matrix

//func matrixAddition(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//  guard matrixA.count == matrixB.count, matrixA[0].count == matrixB[0].count else {
//    return nil
//  }
//    //print("Ok")
// var result: [[Int]] = Array(repeating: Array(repeating: 0, count: matrixA[0].count), count: matrixA.count)
//  for i in 0..<matrixA.count {
//    for j in 0..<matrixA[i].count {
//      result[i][j] = matrixA[i][j] + matrixB[i][j]
//    }
//  }
//  return result
//}
//
//var matrixA: [[Int]] = [
//  [1, 2, 3],
//  [4, 5, 6],
//  [7, 8, 9]
//]
//
//var matrixB: [[Int]] = [
//  [11, 23, 33],
//  [4, 55, 6],
//  [7, 8, 99]
//]
//
//print(matrixAddition(matrixA, matrixB))
//
//func matrixSubtraction(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//  guard matrixA.count == matrixB.count, matrixA[0].count == matrixB[0].count else {
//    return nil
//  }
//    //print("Ok")
// var result: [[Int]] = matrixA
//  for i in 0..<matrixA.count {
//    for j in 0..<matrixA[i].count {
//      result[i][j] = matrixA[i][j] - matrixB[i][j]
//    }
//  }
//  return result
//}
//
//print(matrixSubtraction(matrixA, matrixB))
//
//func matrixMultiplication(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//  guard matrixA[0].count == matrixB.count else { return nil }
//  
//  var result = Array(repeating: Array(repeating: 0, count: matrixB[0].count), count: matrixA.count)
//  for i in 0..<matrixA.count {
//      for j in 0..<matrixB[i].count {
//        for k in 0..<matrixA[j].count {
//          result[i][j] += matrixA[i][k] * matrixB[k][j]
//        }
//      }
//    }
//  return result
//}
//
//let matrixAA = [[1, 2, 3], [4, 5, 6]]
//let matrixC = [[10, 11], [20, 21], [30, 31]]
//
//print(matrixMultiplication(matrixAA, matrixC))
//
//func transposeMatrix(_ matrixA: [[Int]]) -> [[Int]] {
//  guard !matrixA.isEmpty else { return [] }
//    var result = Array(repeating: Array(repeating: 0, count: matrixA.count), count: matrixA[0].count)
//    for i in 0 ..< matrixA.count {
//        for j in 0 ..< matrixA[0].count {
//          result[j][i] = matrixA[i][j]
//        }
//      }
//  return result
//}
//print(transposeMatrix([[1, 2], [3, 4]]))
//print(transposeMatrix([[1, 2, 5], [3, 4, 6]]))
//
//func rotateMatrix(_ matrix: inout [[Int]]) {
//    for i in 0 ..< matrix.count {
//        for j in i ..< matrix.count {
//            let temp = matrix[i][j]
//            matrix[i][j] = matrix[j][i]
//            matrix[j][i] = temp
//        }
//    }
//    
//    for i in 0 ..< matrix.count {
//        matrix[i].reverse()
//    }
//}
//var matrix = [[1,2], [3, 4]]
//rotateMatrix(&matrix)
//print(matrix)

//var matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//rotateMatrix(&matrix1)
//print(matrix1)

//func rowWiseTraverse(_ matrix: [[Int]]) {
//  guard matrix.count > 0 else { return }
//  for row in matrix {
//    for value in row {
//      print(value)
//    }
//  }
//}
//rowWiseTraverse(matrix1)

//func columnWiseTraverse(_ matrix: [[Int]]) {
//  guard matrix.count > 0 else { return }
//  for i in 0..<matrix[0].count {
//    for row in matrix {
//      print(row[i])
//    }
//  }
//}
//columnWiseTraverse(matrix1)

//func diagonalTraverse(_ matrix: [[Int]]) {
//  guard matrix.count > 0 else { return }
//    for i in 0..<matrix.count {
//    print(matrix[i][i])
//  }
//}
//diagonalTraverse(matrix1)

//func secondaryDiagonalTraverse(_ matrix: [[Int]]) { //Secondary
//  guard matrix.count > 0 else { return }
//  for i in 0..<matrix.count {
//      print(matrix[i][matrix.count - 1 - i])
//  }
//}
//secondaryDiagonalTraverse(matrix1)

//func spiralTraverse(_ matrix: [[Int]]) -> [Int] {
//    guard !matrix.isEmpty else { return [] }
//    var rowStart = 0
//    var colStart = 0
//    var rowEnd = matrix.count - 1
//    var colEnd = matrix[0].count - 1
//    var ans: [Int] = []
//    
//    while rowStart <= rowEnd && colStart <= colEnd {
//        
//        //Traverse right
//        for i in stride(from: colStart, to: colEnd + 1, by: 1) {
//            ans.append(matrix[rowStart][i])
//        }
//        rowStart += 1
//        
//        //Traverse down
//        for i in stride(from: rowStart, to: rowEnd + 1, by: 1) {
//            ans.append(matrix[i][colEnd])
//        }
//        colEnd -= 1
//        
//        //Traverse left
//        if rowStart <= rowEnd {
//            for i in stride(from: colEnd, to: colStart - 1, by: -1) {
//                ans.append(matrix[rowEnd][i])
//            }
//        }
//        rowEnd -= 1
//        
//        //Traverse up
//        if colStart <= colEnd {
//            for i in stride(from: rowEnd, to: rowStart - 1, by: -1) {
//                ans.append(matrix[i][colStart])
//            }
//        }
//        colStart += 1
//    }
//    return ans
//}


//print(spiralTraverse([[1,2,3], [4,5,6], [7,8,9]]))
//print(spiralTraverse([]))
//print(spiralTraverse([[1,2,3], [4,5,6], [7,8,9], [10,11,12]]))
