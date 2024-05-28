//////var data: Set<Int> = [1, 2, 3, 4, 5]
//////data.insert(6)
//////data.remove(2)
//////print(data)
//////
//////var dict: [String: Int] = [:]
//////dict["Banana"] = 1
//////dict["Apple"] = 2
//////print(dict)
//////dict.removeValue(forKey: "Banana")
//////print(dict)
//////
//////var dynamicArray: [Int] = []
//////print(dynamicArray.capacity)
//////dynamicArray += [1]
//////print(dynamicArray.capacity)
//////dynamicArray.append(2)
//////print(dynamicArray.capacity)
//////dynamicArray.append(3)
//////print(dynamicArray.capacity)
//////dynamicArray.append(4)
//////print(dynamicArray.capacity)
//////dynamicArray.append(5)
//////print(dynamicArray.capacity)
//////
//////for i in 6...15 {
//////    dynamicArray.append(i)
//////    print(dynamicArray.capacity)
//////}
//////print("===")
//////print(dynamicArray.capacity)
//////print("===")
//////
//////dynamicArray.reserveCapacity(20)
//////
//////for i in 16...22 {
//////    dynamicArray.append(i)
//////    print(dynamicArray.capacity)
//////}
//////print("===")
//////print(dynamicArray.capacity)
//////print("===")
////
//////Matrix
////
//////func matrixAddition(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//////  guard matrixA.count == matrixB.count, matrixA[0].count == matrixB[0].count else {
//////    return nil
//////  }
//////    //print("Ok")
////// var result: [[Int]] = Array(repeating: Array(repeating: 0, count: matrixA[0].count), count: matrixA.count)
//////  for i in 0..<matrixA.count {
//////    for j in 0..<matrixA[i].count {
//////      result[i][j] = matrixA[i][j] + matrixB[i][j]
//////    }
//////  }
//////  return result
//////}
//////
//////var matrixA: [[Int]] = [
//////  [1, 2, 3],
//////  [4, 5, 6],
//////  [7, 8, 9]
//////]
//////
//////var matrixB: [[Int]] = [
//////  [11, 23, 33],
//////  [4, 55, 6],
//////  [7, 8, 99]
//////]
//////
//////print(matrixAddition(matrixA, matrixB))
//////
//////func matrixSubtraction(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//////  guard matrixA.count == matrixB.count, matrixA[0].count == matrixB[0].count else {
//////    return nil
//////  }
//////    //print("Ok")
////// var result: [[Int]] = matrixA
//////  for i in 0..<matrixA.count {
//////    for j in 0..<matrixA[i].count {
//////      result[i][j] = matrixA[i][j] - matrixB[i][j]
//////    }
//////  }
//////  return result
//////}
//////
//////print(matrixSubtraction(matrixA, matrixB))
//////
//////func matrixMultiplication(_ matrixA: [[Int]], _ matrixB: [[Int]]) -> [[Int]]? {
//////  guard matrixA[0].count == matrixB.count else { return nil }
//////
//////  var result = Array(repeating: Array(repeating: 0, count: matrixB[0].count), count: matrixA.count)
//////  for i in 0..<matrixA.count {
//////      for j in 0..<matrixB[i].count {
//////        for k in 0..<matrixA[j].count {
//////          result[i][j] += matrixA[i][k] * matrixB[k][j]
//////        }
//////      }
//////    }
//////  return result
//////}
//////
//////let matrixAA = [[1, 2, 3], [4, 5, 6]]
//////let matrixC = [[10, 11], [20, 21], [30, 31]]
//////
//////print(matrixMultiplication(matrixAA, matrixC))
//////
//////func transposeMatrix(_ matrixA: [[Int]]) -> [[Int]] {
//////  guard !matrixA.isEmpty else { return [] }
//////    var result = Array(repeating: Array(repeating: 0, count: matrixA.count), count: matrixA[0].count)
//////    for i in 0 ..< matrixA.count {
//////        for j in 0 ..< matrixA[0].count {
//////          result[j][i] = matrixA[i][j]
//////        }
//////      }
//////  return result
//////}
//////print(transposeMatrix([[1, 2], [3, 4]]))
//////print(transposeMatrix([[1, 2, 5], [3, 4, 6]]))
//////
//////func rotateMatrix(_ matrix: inout [[Int]]) {
//////    for i in 0 ..< matrix.count {
//////        for j in i ..< matrix.count {
//////            let temp = matrix[i][j]
//////            matrix[i][j] = matrix[j][i]
//////            matrix[j][i] = temp
//////        }
//////    }
//////
//////    for i in 0 ..< matrix.count {
//////        matrix[i].reverse()
//////    }
//////}
//////var matrix = [[1,2], [3, 4]]
//////rotateMatrix(&matrix)
//////print(matrix)
////
//////var matrix1 = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//////rotateMatrix(&matrix1)
//////print(matrix1)
////
//////func rowWiseTraverse(_ matrix: [[Int]]) {
//////  guard matrix.count > 0 else { return }
//////  for row in matrix {
//////    for value in row {
//////      print(value)
//////    }
//////  }
//////}
//////rowWiseTraverse(matrix1)
////
//////func columnWiseTraverse(_ matrix: [[Int]]) {
//////  guard matrix.count > 0 else { return }
//////  for i in 0..<matrix[0].count {
//////    for row in matrix {
//////      print(row[i])
//////    }
//////  }
//////}
//////columnWiseTraverse(matrix1)
////
//////func diagonalTraverse(_ matrix: [[Int]]) {
//////  guard matrix.count > 0 else { return }
//////    for i in 0..<matrix.count {
//////    print(matrix[i][i])
//////  }
//////}
//////diagonalTraverse(matrix1)
////
//////func secondaryDiagonalTraverse(_ matrix: [[Int]]) { //Secondary
//////  guard matrix.count > 0 else { return }
//////  for i in 0..<matrix.count {
//////      print(matrix[i][matrix.count - 1 - i])
//////  }
//////}
//////secondaryDiagonalTraverse(matrix1)
////
//////func spiralTraverse(_ matrix: [[Int]]) -> [Int] {
//////    guard !matrix.isEmpty else { return [] }
//////    var rowStart = 0
//////    var colStart = 0
//////    var rowEnd = matrix.count - 1
//////    var colEnd = matrix[0].count - 1
//////    var ans: [Int] = []
//////
//////    while rowStart <= rowEnd && colStart <= colEnd {
//////
//////        //Traverse right
//////        for i in stride(from: colStart, to: colEnd + 1, by: 1) {
//////            ans.append(matrix[rowStart][i])
//////        }
//////        rowStart += 1
//////
//////        //Traverse down
//////        for i in stride(from: rowStart, to: rowEnd + 1, by: 1) {
//////            ans.append(matrix[i][colEnd])
//////        }
//////        colEnd -= 1
//////
//////        //Traverse left
//////        if rowStart <= rowEnd {
//////            for i in stride(from: colEnd, to: colStart - 1, by: -1) {
//////                ans.append(matrix[rowEnd][i])
//////            }
//////        }
//////        rowEnd -= 1
//////
//////        //Traverse up
//////        if colStart <= colEnd {
//////            for i in stride(from: rowEnd, to: rowStart - 1, by: -1) {
//////                ans.append(matrix[i][colStart])
//////            }
//////        }
//////        colStart += 1
//////    }
//////    return ans
//////}
////
////
//////print(spiralTraverse([[1,2,3], [4,5,6], [7,8,9]]))
//////print(spiralTraverse([]))
//////print(spiralTraverse([[1,2,3], [4,5,6], [7,8,9], [10,11,12]]))
////
//////LINKED LIST :
////
//class Node<T> {
//  var value: T
//  var next: Node?
//  
//  init(_ value: T) {
//    self.value = value
//    self.next = nil
//  }
//}
////
//func traverse(_ head: Node<Int>?) {
//  var current = head
//  while current != nil {
//      print(current!.value, terminator: ">")
//      current = current?.next
//  }
//  print("nil")
//}
////
////func insertAtBeginning(_ head: inout Node<Int>?, _ value: Int) {
////  let node = Node(value)
////  node.next = head
////  head = node
////}
////
////func insertInMiddle(_ head: inout Node<Int>?, _ value: Int) {
////  let node = Node(value)
////  var slow = head
////  var fast = head
////  var prev = head
////  while fast?.next != nil {
////    prev = slow
////    slow = slow?.next
////    fast = fast?.next?.next
////  }
////    node.next = slow
////  prev?.next = node
////}
////
////func insertAtPosition(_ head: inout Node<Int>?, _ position: Int, _ value: Int) {
////  if position <= 0 {
////      let newNode = Node(value)
////      newNode.next = head
////      head = newNode
////      return
////  }
////  
////  var current = head
////  var prev: Node<Int>? = nil
////  var index = 0
////  
////  while current != nil && index < position {
////    prev = current
////    current = current?.next
////    index += 1
////  }
////  
////    let newNode = Node(value)
////    newNode.next = current
////    prev?.next = newNode
////}
////
////func insertAtEnd(_ head: inout Node<Int>?, value: Int) {
////  let node = Node(value)
////  var current = head
////    while current?.next != nil {
////    current = current?.next
////  }
////  current?.next = node
////}
////
////func deleteAtbeginning(_ head: inout Node<Int>?) {
////    head = head?.next
////}
////
////func deleteInMiddle(_ head: inout Node<Int>?) {
////    var slow = head
////    var fast = head
////    var prev = head
////    while fast?.next != nil {
////        prev = slow
////        slow = slow?.next
////        fast = fast?.next?.next
////    }
////    prev?.next = slow?.next
////}
////
////func deleteAtPosition(_ head: inout Node<Int>?, _ position: Int) {
////  if position <= 0 {
////      head = head?.next
////      return
////  }
////  
////  var current = head
////  var prev: Node<Int>? = nil
////  var index = 0
////  
////  while current != nil && index < position {
////    prev = current
////    current = current?.next
////    index += 1
////  }
////
////    prev?.next = current?.next
////}
////
////func deleteAtEnd(_ head: inout Node<Int>?) {
////  var current = head
////    while current?.next?.next != nil {
////    current = current?.next
////  }
////    current?.next = nil
////}
////
////func findMiddle(_ head: Node<Int>?) -> Node<Int>? {
////        var slow = head
////        var fast = head
////        while fast?.next != nil {
////            slow = slow?.next
////            fast = fast?.next?.next
////        }
////        return slow
////}
////
////func hasCycle(_ head: Node<Int>?) -> Bool {
////  var slow = head
////  var fast = head
////  while fast?.next != nil {
////    slow = slow?.next
////    fast = fast?.next?.next
////    if slow === fast {
////      return true
////    }
////  }
////  return false
////}
////
////func startPointOfCycle(_ head: Node<Int>?) -> Node<Int>? {
////  var slow = head
////  var fast = head
////  while fast?.next != nil {
////    slow = slow?.next
////    fast = fast?.next?.next
////    if slow === fast {
////        return slow
////    }
////  }
////  return nil
////}
////
////func getLastNode(_ head: Node<Int>?) -> Node<Int>? {
////    var current = head
////    while current?.next != nil {
////    current = current?.next
////    }
////    return current
////}
////
////func reverseLinkedList(_ head: inout Node<Int>?) {
////  var prev: Node<Int>? = nil
////  var next: Node<Int>? = nil
////  var current = head
////  while current?.next != nil {
////    next = current?.next
////    current?.next = prev
////    prev = current
////    current = next
////  }
////  head = prev
////}
////
////func checkPalindromLinkedList(_ head: Node<Int>?) -> Bool {
////  var values: [Int] = []
////  var current = head
////  while current?.next != nil {
////      values.append(current!.value)
////     current = current?.next
////  }
////  return values == values.reversed()
////}
////
////func search(_ head: Node<Int>?, _ value: Int) -> Bool {
////  var current = head
////  while current != nil {
////    if current!.value == value {
////      return true
////    }
////    current = current?.next
////  }
////  return false
////}
////
////class LinkedList<T: Equatable> {
////    private var head: Node<T>?
////    
////    // Add a new node at the end of the list
////    func append(_ value: T) {
////        let newNode = Node(value)
////        if let lastNode = getLastNode() {
////            lastNode.next = newNode
////        } else {
////            head = newNode
////        }
////    }
////    
////    // Get the last node in the list
////    private func getLastNode() -> Node<T>? {
////        var node = head
////        while node?.next != nil {
////            node = node?.next
////        }
////        return node
////    }
////    
////    // Print all elements in the list
////    func printList() {
////        var node = head
////        while node != nil {
////            print(node!.value, terminator: " -> ")
////            node = node?.next
////        }
////        print("nil")
////    }
////    
////    func mergeLinkedList(_ head1: LinkedList<Int>?, _ head2: LinkedList<Int>?) -> LinkedList? {
////        var node1 = head1?.head
////        var node2 = head2?.head
////        let mergedList = LinkedList()
////        
////        while node1 != nil && node2 != nil {
////            if node1!.value < node2!.value {
////                mergedList.append(node1!.value as! T)
////                node1 = node1?.next
////            }  else {
////                mergedList.append(node2!.value as! T)
////                node2 = node2?.next
////            }
////        }
////        while node1 != nil {
////            mergedList.append(node1!.value as! T)
////            node1 = node1?.next
////        }
////        while node2 != nil {
////            mergedList.append(node2!.value as! T)
////            node2 = node2?.next
////        }
////        return mergedList
////    }
////}
////
////func removeDuplicates(_ head: inout Node<Int>?) {
////  var current = head
////  while current != nil {
////    var upNext = current
////    
////    while upNext?.next != nil {
////      
////      if upNext?.next?.value == current?.value {
////        upNext?.next = upNext?.next?.next
////      } else {
////        upNext = upNext?.next
////      }
////    }
////    current = current?.next
////  }
////}
////
////func removeNthFromEnd(_ head: inout Node<Int>?, n: Int) {
////  var dummy = Node(0)
////    dummy.next = head
////    var first: Node<Int>? = dummy
////    var second: Node<Int>? = dummy
////  for i in 0..<(n + 1) {
////    first = first?.next
////  }
////  while first != nil {
////    first = first?.next
////    second = second?.next
////  }
////  second?.next = second?.next?.next
////    head = dummy.next
////}
////
/////// Example Usage
////var head: Node<Int>? = Node(1)
////let node2 = Node(2)
////head?.next = node2
////head?.next?.next = Node(3)
////traverse(head)
////insertAtBeginning(&head, 4)
////traverse(head)
////deleteAtbeginning(&head)
////traverse(head)
////insertAtEnd(&head, value: 4)
////traverse(head)
//////deleteAtEnd(&head)
//////traverse(head)
//////deleteInMiddle(&head)
//////traverse(head)
////insertInMiddle(&head, 77)
////traverse(head)
////insertInMiddle(&head, 77)
////traverse(head)
////print(findMiddle(head)?.value)
//////print(hasCycle(head))
//////print(startPointOfCycle(head)?.value)
//////head?.next?.next?.next?.next = head
//////print(hasCycle(head))
//////print(startPointOfCycle(head)?.value)
//////head?.next?.next?.next?.next = node2
//////print(hasCycle(head))
//////print(startPointOfCycle(head)?.value)
//////traverse(head)
//////print(getLastNode(head)?.value)
//////print(getLastNode(Node(1))?.value)
//////print(getLastNode(nil))
//////reverseLinkedList(&head)
//////traverse(head)
//////print(checkPalindromLinkedList(head))
//////print(search(head, 7))
//////print(search(head, 1))
////
////// Merge Two Sorted Lists
////let list4 = LinkedList<Int>()
////list4.append(1)
////list4.append(3)
////list4.append(5)
////
////let list5 = LinkedList<Int>()
////list5.append(1)
////list5.append(2)
////list5.append(4)
////list5.append(6)
////
////
////let mergedList = LinkedList<Int>().mergeLinkedList(list4, list5)
////print(mergedList?.printList())
////
////removeDuplicates(&head)
////traverse(head)
////
////removeNthFromEnd(&head, n: 2)
////traverse(head)
////
////insertAtPosition(&head, 3, 55)
////traverse(head)
////
////deleteAtPosition(&head, 3)
////traverse(head)
//
//func findIIntersection(_ head1: Node<Int>?, _ head2: Node<Int>?) -> Node<Int>? {
//    
//    var len1 = 0
//    var len2 = 0
//    
//    var node1: Node<Int>? = head1
//    var node2: Node<Int>? = head2
//    
//    // Calculate lengths of both lists
//    while node1 != nil {
//        len1 += 1
//        node1 = node1?.next
//    }
//    
//    while node2 != nil {
//        len2 += 1
//        node2 = node2?.next
//    }
//    
//    // Reset pointers to the start of each list
//    node1 = head1
//    node2 = head2
//    
//    // Adjust starting point of longer list
//    if len1 > len2 {
//        for i in 0..<(len1 - len2) {
//            node1 = node1?.next
//        }
//    } else {
//        for i in 0..<(len2 - len1) {
//            node2 = node2?.next
//        }
//    }
//    
//    // Move both pointers until they meet
//    while node1 != nil && node2 != nil {
//        if node1 === node2 {
//            return node1
//        }
//        node1 = node1?.next
//        node2 = node2?.next
//    }
//    
//    return nil
//    
//}
//
//let head1 = Node(1)
//head1.next = Node(2)
//
//let intersect = Node(5)
//head1.next?.next = intersect
//
//let head2 = Node(7)
//head2.next = Node(8)
//head2.next?.next = Node(9)
//head2.next?.next?.next = intersect
//
//print(findIIntersection(head1, head2)!.value)
//
//func addTwoNumbers(_ head1: Node<Int>?, _ head2: Node<Int>?) -> Node<Int>? {
//  var node1 = head1
//  var node2 = head2
//  var carry = 0
//  var dummy = Node(0)
//  var current = dummy
//  
//  while node1 != nil || node2 != nil {
//    let val1 = node1?.value ?? 0
//    let val2 = node2?.value ?? 0
//    let sum = val1 + val2 + carry
//      current.next = Node(sum % 10)
//      current = (current.next)!
//    if node1 != nil { node1 = node1?.next }
//    if node2 != nil { node2 = node2?.next }
//  }
//  
//  if carry > 0 {
//      current.next = Node(carry)
//  }
//  
//  return dummy.next
//}
//
//let ans = addTwoNumbers(head1, head2)
//traverse(ans)


//Graph

//class Graphs {
//  var adjacencyList: [Int: [Int]] = [:]
//    var isBidirected = false
//    
//    init(isBidirected: Bool = false) {
//        self.isBidirected = isBidirected
//    }
//  
//    func addEdges(_ v1: Int, _ v2: Int) {
//      adjacencyList[v1, default: []].append(v2)
//    
//      //For bi directional graphs
//        if isBidirected {
//            adjacencyList[v2, default: []].append(v1)
//        }
//  }
//  
//  func getNeightbours(_ v: Int) -> [Int] { // O(no of edges)
//    adjacencyList[v, default: []]
//  }
//}
//
//let g = Graphs()
//g.addEdges(0, 2)
//g.addEdges(1, 2)
//g.addEdges(1, 3)
//g.addEdges(2, 0)
//g.addEdges(2, 1)
//g.addEdges(2, 3)
//print(g.adjacencyList)
//
//for i in 0...3 {
//    print(g.getNeightbours(i))
//}
//
//let g2 = Graphs(isBidirected: true)
//g2.addEdges(0, 2)
//g2.addEdges(1, 2)
//g2.addEdges(1, 3)
//g2.addEdges(3, 2)
//print(g2.adjacencyList)
//
//for i in 0...3 {
//    print(g2.getNeightbours(i))
//}

class Node<T: Equatable & Hashable>: Hashable {
    var value: T
    var edges: [Edge<T>] = []

    init(_ value: T) {
        self.value = value
    }
    
    static func == (lhs: Node<T>, rhs: Node<T>) -> Bool {
            return lhs.value == rhs.value
        }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }
    
}

class Edge<T: Equatable & Hashable> {
    var from: Node<T>
    var to: Node<T>
    var weight: Int?

    init(from: Node<T>, to: Node<T>, weight: Int? = nil) {
        self.from = from
        self.to = to
        self.weight = weight
    }
}

class Graph<T: Equatable & Hashable> {
    var nodes: [Node<T>] = []

    func addNode(_ value: T) -> Node<T> {
        let newNode = Node(value)
        nodes.append(newNode)
        return newNode
    }

    func addEdge(from: Node<T>, to: Node<T>, weight: Int? = nil) {
        let edge = Edge(from: from, to: to, weight: weight)
        from.edges.append(edge)
    }

    func getNode(_ value: T) -> Node<T>? {
        return nodes.first { $0.value == value }
    }

    func addEdge(fromValue: T, toValue: T, weight: Int? = nil) {
        guard let fromNode = getNode(fromValue), let toNode = getNode(toValue) else {
            return
        }
        addEdge(from: fromNode, to: toNode, weight: weight)
    }
    
    func display() {
        for node in nodes {
            print("Node \(node.value):", terminator: " ")
            for edge in node.edges {
                if let weight = edge.weight {
                    print("-> \(edge.to.value) (weight: \(weight))", terminator: " ")
                } else {
                    print("-> \(edge.to.value)", terminator: " ")
                }
            }
            print()
        }
    }
    
    func bfs(startNode: Node<T>) {
        var visited = Set<Node<T>>()
        var queue = [Node<T>]()
        
        queue.append(startNode)
        visited.insert(startNode)
        
        while !queue.isEmpty {
            let vertex = queue.removeFirst()
            print(vertex.value) // Process the node
            for edge in vertex.edges {
                let neighbor = edge.to
                if !visited.contains(neighbor) {
                    queue.append(neighbor)
                    visited.insert(neighbor)
                }
            }
        }
        
    }
    
    func dfs(_ startNode: Node<T>) {
        var visited = Set<Node<T>>()
        dfsHelper(current: startNode, visited: &visited)
    }
    
    func dfsHelper(current: Node<T>, visited: inout Set<Node<T>>) {
        visited.insert(current)
        print(current.value)
        
        for edge in current.edges {
            let neighbour = edge.to
            if !visited.contains(neighbour) {
                dfsHelper(current: neighbour, visited: &visited)
            }
        }
    }
    
    func hasCycle() -> Bool {
        var visited = Set<Node<T>>()
        var recursiveStack = Set<Node<T>>()
        
        for node in nodes {
            if !visited.contains(node) {
                return dfsForCycleDetection(node, &visited, &recursiveStack)
            }
        }
        return false
    }
    
    func dfsForCycleDetection(_ node: Node<T>, _ visited: inout Set<Node<T>>, _ recusriveStack: inout Set<Node<T>>) -> Bool {
        visited.insert(node)
        recusriveStack.insert(node)
        
        for edge in node.edges {
            let neighbour = edge.to
            if !visited.contains(neighbour) {
                if dfsForCycleDetection(neighbour, &visited, &recusriveStack) {
                    return true
                }
            } else if recusriveStack.contains(neighbour) {
                return true
            }
        }
        
        recusriveStack.remove(node)
        return false
    }
    
    func topologicalSort() -> [Node<T>]? {
        var visited = Set<Node<T>>()
        var recursiveStack = Set<Node<T>>()
        var stack = [Node<T>]()
        
        for node in nodes {
            if !visited.contains(node) {
                if !dfsForTopologicalSorting(node, &visited, &recursiveStack, &stack) {
                    return nil
                }
            }
        }
        return stack
    }
    
    func dfsForTopologicalSorting(_ node: Node<T>, _ visited: inout Set<Node<T>>, _ recusriveStack: inout Set<Node<T>>, _ stack: inout [Node<T>]) -> Bool {
        visited.insert(node)
        recusriveStack.insert(node)
        
        for edge in node.edges {
            let neighbour = edge.to
            if !visited.contains(neighbour) {
                if !dfsForTopologicalSorting(neighbour, &visited, &recusriveStack, &stack) {
                    print("one")
                    return false
                }
            } else if recusriveStack.contains(neighbour) {
                print("two")
                return false
            }
        }
        
        recusriveStack.remove(node)
        stack.append(node)
        return true
    }
}

//let graph = Graph<String>()
//
//let nodeA = graph.addNode("A")
//let nodeB = graph.addNode("B")
//let nodeC = graph.addNode("C")
//let nodeD = graph.addNode("D")
//
//graph.addEdge(from: nodeA, to: nodeB)
//graph.addEdge(from: nodeA, to: nodeC, weight: 10)
//graph.addEdge(from: nodeB, to: nodeD, weight: 20)
//graph.addEdge(from: nodeC, to: nodeD)
//
//graph.display()
//
//graph.bfs(startNode: nodeA)
//graph.dfs(nodeA)

//Cycle detection in Graph

class GraphForCycleDetection {
    private var adjacencyList: [Int: [Int]]
    
    init() {
        adjacencyList = [:]
    }
    
    func addEdge(_ from: Int, _ to: Int) {
        if adjacencyList[from] == nil {
            adjacencyList[from] = []
        }
        adjacencyList[from]?.append(to)
    }
    
    func hasCycle() -> Bool {
        var visited = Set<Int>()
        var recursionStack = Set<Int>()
        
        for node in adjacencyList.keys {
            if !visited.contains(node) {
                if dfs(node, &visited, &recursionStack) {
                    return true
                }
            }
        }
        return false
    }
    
    private func dfs(_ node: Int, _ visited: inout Set<Int>, _ recursionStack: inout Set<Int>) -> Bool {
        visited.insert(node)
        recursionStack.insert(node)
        
        if let neighbors = adjacencyList[node] {
            for neighbor in neighbors {
                if !visited.contains(neighbor) {
                    if dfs(neighbor, &visited, &recursionStack) {
                        return true
                    }
                } else if recursionStack.contains(neighbor) {
                    return true
                }
            }
        }
        
        recursionStack.remove(node)
        return false
    }
}

// Example usage
//let graphForCycleDetection = GraphForCycleDetection()
//graphForCycleDetection.addEdge(0, 1)
//graphForCycleDetection.addEdge(1, 2)
//graphForCycleDetection.addEdge(2, 0)
//graphForCycleDetection.addEdge(2, 3)
//
//if graphForCycleDetection.hasCycle() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

// Example usage
let graphWithCycle = Graph<Int>()
let nodeA = graphWithCycle.addNode(0)
let nodeB = graphWithCycle.addNode(1)
let nodeC = graphWithCycle.addNode(2)
let nodeD = graphWithCycle.addNode(3)
graphWithCycle.addEdge(fromValue: 0, toValue: 1)
graphWithCycle.addEdge(fromValue: 1, toValue: 2)
graphWithCycle.addEdge(fromValue: 2, toValue: 0)
graphWithCycle.addEdge(fromValue: 2, toValue: 3)

//if graphWithCycle.hasCycle() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

// Example usage
let graphWithOutCycle2 = Graph<Int>()
let nodeA2 = graphWithCycle.addNode(0)
let nodeB3 = graphWithCycle.addNode(1)
let nodeC2 = graphWithCycle.addNode(2)
let nodeD2 = graphWithCycle.addNode(3)
graphWithOutCycle2.addEdge(fromValue: 0, toValue: 1)
graphWithOutCycle2.addEdge(fromValue: 1, toValue: 2)
graphWithOutCycle2.addEdge(fromValue: 2, toValue: 3)

//if graphWithOutCycle.hasCycle() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

let graphWithOutCycle = Graph<Int>()
graphWithOutCycle.addNode(0)
graphWithOutCycle.addNode(1)
graphWithOutCycle.addNode(2)
graphWithOutCycle.addNode(3)
graphWithOutCycle.addNode(4)
graphWithOutCycle.addNode(5)
graphWithOutCycle.addEdge(fromValue: 5, toValue: 0)
graphWithOutCycle.addEdge(fromValue: 5, toValue: 2)
graphWithOutCycle.addEdge(fromValue: 4, toValue: 0)
graphWithOutCycle.addEdge(fromValue: 4, toValue: 1)
graphWithOutCycle.addEdge(fromValue: 2, toValue: 3)
graphWithOutCycle.addEdge(fromValue: 3, toValue: 1)


//graphWithOutCycle.display()
//graphWithCycle.topologicalSort()?.forEach { $0 }
if let topSort = graphWithOutCycle.topologicalSort() {
    print(topSort)
} else {
    print("Top sort not possible")
}
