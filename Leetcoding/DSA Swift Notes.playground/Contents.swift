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
    var indegree: [Node<T>: Int] = [Node<T>: Int]()
    private var distance: [Node<T>: [Node<T>: Int]] = [Node<T>: [Node<T>: Int]]()  //FW
    
    //FW
//    init?(_ nodes: [Node<T>]) {
//        self.nodes = nodes
//        self.distance = [:]
//        for node in nodes {
//            distance[node] = [:]
//            for innerNode in nodes {
//                if node == innerNode {
//                    distance[node]![innerNode] = 0
//                } else {
//                    distance[node]![innerNode] = Int.max / 2
//                }
//            }
//        }
//    }
//    
    func addNode(_ value: T) -> Node<T> {
        let newNode = Node(value)
        nodes.append(newNode)
        
        for node in nodes {
           distance[node] = [:]
           for innerNode in nodes {
               if node == innerNode {
                   distance[node]![innerNode] = 0
               } else {
                   distance[node]![innerNode] = Int.max / 2
               }
           }
       }
            
        return newNode
    }
    
    func addEdge(from: Node<T>, to: Node<T>, weight: Int? = nil) {
        print("hello1")
        let edge = Edge(from: from, to: to, weight: weight)
        from.edges.append(edge)
        print("Edge added: (\(from.value) -> \(to.value), weight: \(String(describing: weight)))")
        
        //Topological sorting using Kahn's/BFS
        indegree[to, default: 0] += 1
        if indegree[from] == nil {
            indegree[from] = 0
        }
        
        //FW
        distance[from]?[to] = weight
    }
    
    func getNode(_ value: T) -> Node<T>? {
        return nodes.first { $0.value == value }
    }
    
//    func addEdge(fromValue: T, toValue: T, weight: Int? = nil) {
//        print("hello2")
//        guard let fromNode = getNode(fromValue), let toNode = getNode(toValue) else {
//            return
//        }
//        addEdge(from: fromNode, to: toNode, weight: weight)
//    }
    
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
    
    func hasCycleInUndirectedGraph() -> Bool {
        var visited = Set<Node<T>>()
        
        for node in nodes {
            if !visited.contains(node) {
                if dfsForCycleDetectionInUndirectedGraph(node, &visited, Node(-1 as! T)) {
                    return true
                }
            }
        }
        return false
    }
    
    func dfsForCycleDetectionInUndirectedGraph(_ node: Node<T>, _ visited: inout Set<Node<T>>,  _ parentNode: Node<T>) -> Bool {
        visited.insert(node)
        
        for edge in node.edges {
            let neighbour = edge.to
            if !visited.contains(neighbour) {
                if dfsForCycleDetectionInUndirectedGraph(neighbour,  &visited, node) {
                    return true
                }
            } else if parentNode != neighbour {
                return true
            }
        }
        
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
    
    func topologicalSortUsingBFSKahns() -> [Node<T>]? {
        var zeroInDegreeQueue = [Node<T>]()
        var topologicalSortedQueue = [Node<T>]()
        print(indegree)
        for (node, degree) in indegree {
            if degree == 0 {
                zeroInDegreeQueue.append(node)
            }
        }
        
        while !zeroInDegreeQueue.isEmpty {
            let node = zeroInDegreeQueue.removeFirst()
            topologicalSortedQueue.append(node)
            
            for edge in node.edges {
                indegree[edge.to, default: 0] -= 1
                if indegree[edge.to] == 0 {
                    zeroInDegreeQueue.append(edge.to)
                }
            }
        }
        return topologicalSortedQueue
    }
    
    func dijkstra(_ fromSource: Node<T>) ->  [Node<T>: Int] {
        var distances = [Node<T>: Int]()
        var priorityQueue = PriorityQueue<(node: Node<T>, distance: Int)>(sort: { $0.distance < $1.distance })
        var visited = Set<Node<T>>()
        for node in nodes {
            distances[node] = Int.max
        }
        distances[fromSource] = 0
        
        priorityQueue.enqueue((node: fromSource, distance: 0))
        
        while let current = priorityQueue.dequeue() {
            let currentNode = current.node
            print("CURRENT NODE: \(currentNode.value)")
            let currentDistance = current.distance
            if !visited.contains(currentNode) {
                visited.insert(currentNode)
                for edge in fromSource.edges {
                    let neighbour = edge.to
                    let newDistance = currentDistance + edge.weight!
                    if newDistance < distances[neighbour] ?? Int.max {
                        distances[neighbour] = newDistance
                        priorityQueue.enqueue((neighbour, newDistance))
                    }
                }
            }
        }
        print(distances)
        return distances
    }
    
    func bellmanFord(_ source: Node<T>) -> (distances: [Node<T>: Int], hasNegativeCycle: Bool) {
        var distance = [Node<T>: Int]()
        for node in nodes {
            distance[node] = Int.max
        }
        distance[source] = 0
        
        for _ in 1..<nodes.count {
            for edge in source.edges {
                if let fromDistance = distance[edge.from], fromDistance != Int.max {
                    let newDistance = fromDistance + edge.weight!
                    if newDistance < distance[edge.to]! {
                        distance[edge.to] = newDistance
                    }
                }
            }
        }
        
        for edge in source.edges {
            if let fromDistance = distance[edge.from], fromDistance != Int.max {
                let newDistance = fromDistance + edge.weight!
                if newDistance < distance[edge.to]! {
                    return (distance, true)
                }
            }
        }
        
        return (distances: distance, hasNegativeCycle: false)
        
    }
    
    func floydWarshal() -> [Node<T> : [Node<T> : Int]] {
        for i in nodes {
            for j in nodes {
                for k in nodes {
                    if let dij = distance[i]?[j], let dik = distance[i]?[k], let dkj = distance[k]?[j] {
                        distance[i]?[j] = min(dij, dik + dkj)
                    }
                }
            }
            
        }
        return distance
    }
    
    func primMST() -> (edges: [Edge<T>], totalCost: Int) {
            var mst: [Edge<T>] = []
            var visited: Set<Node<T>> = []
            var priorityQueue = PriorityQueue<Edge<T>>(sort: { $0.weight! < $1.weight! })
            var totalCost = 0
            guard let startNode = nodes.first else { return (mst, totalCost) }
            
            visited.insert(startNode)
            for edge in startNode.edges {
                let neighbour = edge.to
                let weight = edge.weight
                let edge = Edge(from: startNode, to: neighbour, weight: weight)
                priorityQueue.enqueue(edge)
            }
            
            while let edge = priorityQueue.dequeue() {
                if visited.contains(edge.to) {
                    continue
                }
                
                mst.append(edge)
                totalCost += edge.weight!
                visited.insert(edge.to)
                
                for edge in edge.to.edges {
                    let neighbour = edge.to
                    if !visited.contains(neighbour) {
                        let newEdge = Edge(from: edge.to, to: neighbour, weight: edge.weight)
                        priorityQueue.enqueue(newEdge)
                    }
                }
    
            }
            
            return (mst, totalCost)
        }
    
    func krushkalMST() -> (edges: [Edge<T>], totalMinCost: Int) {
        var mst = [Edge<T>]()
        var totalMinCost = 0
        var unionFind = UnionFind<T>()
        var sortedEdges = [Edge<T>]()
      
        for node in nodes {
            unionFind.makeSet(node)
                sortedEdges.append(contentsOf: node.edges.sorted(by: { $0.weight! < $1.weight! }))
        }
        sortedEdges = sortedEdges.sorted(by: { $0.weight! < $1.weight! })
        
        for edge in sortedEdges {
            if unionFind.find(edge.from) != unionFind.find(edge.to) {
                mst.append(edge)
                totalMinCost += edge.weight!
                unionFind.union(edge.from, edge.to)
            }
        }
        
        return (mst, totalMinCost)
    }
    
    
    func kosarajuSCC() -> [[Node<T>]] {
        var stack = [Node<T>]()
        var visited = Set<Node<T>>()
        
        for node in nodes {
            if !visited.contains(node) {
                dfs(node: node)
            }
        }
        let reverseNodes = nodes.reversed()
        
        func dfs(node: Node<T>) {
                visited.insert(node)
                for edge in node.edges {
                if !visited.contains(edge.to) {
                        dfs(node: edge.to)
                    }
                }
                stack.append(node)
            }
                
        visited.removeAll()
        var sccs: [[Node<T>]] = []
        
        while !stack.isEmpty {
            let node = stack.removeLast()
            if !visited.contains(node) {
                var scc: [Node<T>] = []
                dfsReversed(node: node, scc: &scc)
                sccs.append(scc)
            }
        }
        
        func dfsReversed(node: Node<T>, scc: inout [Node<T>]) {
            visited.insert(node)
            scc.append(node)
            for n in reverseNodes {
                for edge in n.edges {
                    let neighbor = edge.to
                    if !visited.contains(neighbor) {
                        dfsReversed(node: neighbor, scc: &scc)
                    }
                }
            }
        }
        
        return sccs
    }
    
    
}

// PriorityQueue implementation
struct PriorityQueue<T> {
    private var heap: [T]
    private let sort: (T, T) -> Bool
    
    init(sort: @escaping (T, T) -> Bool) {
        self.heap = []
        self.sort = sort
    }
    
    var isEmpty: Bool {
        return heap.isEmpty
    }
    
    var count: Int {
        return heap.count
    }
    
    func peek() -> T? {
        return heap.first
    }
    
    mutating func enqueue(_ element: T) {
        heap.append(element)
        siftUp(heap.count - 1)
    }
    
    mutating func dequeue() -> T? {
        guard !heap.isEmpty else { return nil }
        if heap.count == 1 {
            return heap.removeLast()
        } else {
            let value = heap[0]
            heap[0] = heap.removeLast()
            siftDown(0)
            return value
        }
    }
    
    private mutating func siftUp(_ index: Int) {
        var childIndex = index
        let child = heap[childIndex]
        var parentIndex = (childIndex - 1) / 2
        
        while childIndex > 0 && sort(child, heap[parentIndex]) {
            heap[childIndex] = heap[parentIndex]
            childIndex = parentIndex
            parentIndex = (childIndex - 1) / 2
        }
        
        heap[childIndex] = child
    }
    
    private mutating func siftDown(_ index: Int) {
        let count = heap.count
        var parentIndex = index
        
        while true {
            let leftChildIndex = 2 * parentIndex + 1
            let rightChildIndex = 2 * parentIndex + 2
            var optionalParentIndex: Int?
            
            if leftChildIndex < count && sort(heap[leftChildIndex], heap[parentIndex]) {
                optionalParentIndex = leftChildIndex
            }
            if rightChildIndex < count && sort(heap[rightChildIndex], heap[optionalParentIndex ?? parentIndex]) {
                optionalParentIndex = rightChildIndex
            }
            guard let newIndex = optionalParentIndex, newIndex != parentIndex else {
                return
            }
            
            heap.swapAt(parentIndex, newIndex)
            parentIndex = newIndex
        }
    }
}

class UnionFind<T: Hashable> {
    private var parent: [Node<T>: Node<T>] = [:]
    private var rank: [Node<T>: Int] = [:]
    
    func find(_ node: Node<T>) -> Node<T> {
        if parent[node] != node {
            parent[node] = find(parent[node]!)
        }
        return parent[node]!
    }
    
    func union(_ node1: Node<T>, _ node2: Node<T>) {
        let root1 = find(node1)
        let root2 = find(node2)
        
        if root1 != root2 {
            if rank[root1]! > rank[root2]! {
                parent[root2] = root1
            } else if rank[root1]! < rank[root2]! {
                parent[root1] = root2
            } else {
                parent[root2] = root1
                rank[root1]! += 1
            }
        }
    }
    
    func makeSet(_ node: Node<T>) {
        parent[node] = node
        rank[node] = 0
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

//class GraphForCycleDetection {
//    private var adjacencyList: [Int: [Int]]
//
//    init() {
//        adjacencyList = [:]
//    }
//
//    func addEdge(_ from: Int, _ to: Int) {
//        if adjacencyList[from] == nil {
//            adjacencyList[from] = []
//        }
//        adjacencyList[from]?.append(to)
//    }
//
//    func hasCycle() -> Bool {
//        var visited = Set<Int>()
//        var recursionStack = Set<Int>()
//
//        for node in adjacencyList.keys {
//            if !visited.contains(node) {
//                if dfs(node, &visited, &recursionStack) {
//                    return true
//                }
//            }
//        }
//        return false
//    }
//
//    private func dfs(_ node: Int, _ visited: inout Set<Int>, _ recursionStack: inout Set<Int>) -> Bool {
//        visited.insert(node)
//        recursionStack.insert(node)
//
//        if let neighbors = adjacencyList[node] {
//            for neighbor in neighbors {
//                if !visited.contains(neighbor) {
//                    if dfs(neighbor, &visited, &recursionStack) {
//                        return true
//                    }
//                } else if recursionStack.contains(neighbor) {
//                    return true
//                }
//            }
//        }
//
//        recursionStack.remove(node)
//        return false
//    }
//}

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
//let graphWithCycle = Graph<Int>()
//let nodeA = graphWithCycle.addNode(0)
//let nodeB = graphWithCycle.addNode(1)
//let nodeC = graphWithCycle.addNode(2)
//let nodeD = graphWithCycle.addNode(3)
//graphWithCycle.addEdge(fromValue: 0, toValue: 1)
//graphWithCycle.addEdge(fromValue: 1, toValue: 2)
//graphWithCycle.addEdge(fromValue: 2, toValue: 0)
//graphWithCycle.addEdge(fromValue: 2, toValue: 3)

//if graphWithCycle.hasCycle() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

// Example usage
//let graphWithOutCycle2 = Graph<Int>()
//let nodeA2 = graphWithCycle.addNode(0)
//let nodeB3 = graphWithCycle.addNode(1)
//let nodeC2 = graphWithCycle.addNode(2)
//let nodeD2 = graphWithCycle.addNode(3)
//graphWithOutCycle2.addEdge(fromValue: 0, toValue: 1)
//graphWithOutCycle2.addEdge(fromValue: 1, toValue: 2)
//graphWithOutCycle2.addEdge(fromValue: 2, toValue: 3)

//if graphWithOutCycle.hasCycle() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

//let graphWithOutCycle = Graph<Int>()
//graphWithOutCycle.addNode(0)
//graphWithOutCycle.addNode(1)
//graphWithOutCycle.addNode(2)
//graphWithOutCycle.addNode(3)
//graphWithOutCycle.addNode(4)
//graphWithOutCycle.addNode(5)
//graphWithOutCycle.addEdge(fromValue: 5, toValue: 0)
//graphWithOutCycle.addEdge(fromValue: 5, toValue: 2)
//graphWithOutCycle.addEdge(fromValue: 4, toValue: 0)
//graphWithOutCycle.addEdge(fromValue: 4, toValue: 1)
//graphWithOutCycle.addEdge(fromValue: 2, toValue: 3)
//graphWithOutCycle.addEdge(fromValue: 3, toValue: 1)


//graphWithOutCycle.display()
//graphWithCycle.topologicalSort()?.forEach { $0 }
//if let topSort = graphWithOutCycle.topologicalSort() {
//    print(topSort)
//} else {
//    print("Top sort not possible")
//}

//let graphUndirected = Graph<Int>()
//graphUndirected.addNode(0)
//graphUndirected.addNode(1)
//graphUndirected.addNode(2)
//graphUndirected.addNode(3)
//graphUndirected.addEdge(fromValue: 0, toValue: 1)
//graphUndirected.addEdge(fromValue: 1, toValue: 2)
//graphUndirected.addEdge(fromValue: 2, toValue: 0)
//graphUndirected.addEdge(fromValue: 2, toValue: 3)

//if graphUndirected.hasCycleInUndirectedGraph() {
//    print("The graph contains a cycle.")
//} else {
//    print("The graph does not contain a cycle.")
//}

//let graphKahn = Graph<Int>()
//let source = graphKahn.addNode(0)
//graphKahn.addNode(1)
//graphKahn.addNode(2)
//graphKahn.addNode(3)
//graphKahn.addNode(4)
//graphKahn.addNode(5)
//graphKahn.addEdge(fromValue: 5, toValue: 2, weight: 4)
//graphKahn.addEdge(fromValue: 5, toValue: 0, weight: 1)
//graphKahn.addEdge(fromValue: 4, toValue: 0, weight: 2)
//graphKahn.addEdge(fromValue: 4, toValue: 1, weight: 1)
//graphKahn.addEdge(fromValue: 2, toValue: 3, weight: 5)
//graphKahn.addEdge(fromValue: 3, toValue: 1, weight: 1)


//let sortItems = graphKahn.topologicalSortUsingBFSKahns()
//print(sortItems!)

let node0 = Node(0)
let node1 = Node(1)
let node2 = Node(2)
let node3 = Node(3)
//
//let graphDijkstra = Graph<Int>()
//graphDijkstra.addNode(node0.value)
//graphDijkstra.addNode(node1.value)
//graphDijkstra.addNode(node2.value)
//graphDijkstra.addNode(node3.value)
//graphDijkstra.addEdge(from: node0, to: node1, weight: 4)
//graphDijkstra.addEdge(from: node0, to: node2, weight: 1)
//graphDijkstra.addEdge(from: node2, to: node1, weight: 2)
//graphDijkstra.addEdge(from: node1, to: node3, weight: 1)
//graphDijkstra.addEdge(from: node2, to: node3, weight: 5)

//let distances = graphDijkstra.dijkstra(node0)
//print("Shortest distances from node \(node0.value):")
//for (node, distance) in distances {
//    print("To node \(node.value): \(distance)")
//}

//graphDijkstra.addEdge(from: node2, to: node1, weight: -2)
//let distancesBellman = graphDijkstra.bellmanFord(node0)
//print("Shortest distances from node \(node0.value):")
//print(distancesBellman)
//for distances in distancesBellman.distances {
//    print("To node \(distances.key.value): \(distances.value)")
//}

//Floyd Warshal

//let graphFW = Graph<Int>()
//graphFW.addNode(node0.value)
//graphFW.addNode(node1.value)
//graphFW.addNode(node2.value)
//graphFW.addNode(node3.value)
//graphFW.addEdge(from: node0, to: node1, weight: 3)
//graphFW.addEdge(from: node0, to: node3, weight: 7)
//graphFW.addEdge(from: node1, to: node2, weight: 1)
//graphFW.addEdge(from: node2, to: node0, weight: 2)
//graphFW.addEdge(from: node3, to: node2, weight: 1)

//let distances = graphFW.floydWarshal()

//print("Shortest distances between every pair of vertices:")
//for i in graphFW.nodes {
//    for j in graphFW.nodes {
//        let distance = distances[i]?[j] ?? Int.max / 2
//        if distance == Int.max / 2 {
//            print("∞", terminator: " ")
//        } else {
//            print(distance, terminator: " ")
//        }
//    }
//    print()
//}

//graphFW.nodes = [node0, node1, node2, node3]
//let mst = graphFW.primMST()
//print(mst.1)
//print(mst.0)
//print("Edges in the Minimum Spanning Tree: Prims")
//for edge in mst.0 {
//    print("(\(edge.from.value), \(edge.to.value)) - weight: \(String(describing: edge.weight))")
//}

let graphForPrims = Graph<Int>()
graphForPrims.nodes = [node0, node1, node2, node3]
graphForPrims.addEdge(from: node0, to: node1, weight: 10)
graphForPrims.addEdge(from: node0, to: node2, weight: 15)
graphForPrims.addEdge(from: node0, to: node3, weight: 30)
graphForPrims.addEdge(from: node1, to: node3, weight: 40)
graphForPrims.addEdge(from: node3, to: node2, weight: 50)
//let mst2 = graphForPrims.primMST()
//print(mst2.1)
//print(mst2.0)
//print("Edges in the Minimum Spanning Tree: Prims")
//for edge in mst2.0 {
//    print("(\(edge.from.value), \(edge.to.value)) - weight: \(String(describing: edge.weight))")
//}

//let graphKrushkal = Graph<Int>()
//graphKrushkal.nodes = [node0, node1, node2, node3]
//graphKrushkal.addEdge(from: node0, to: node1, weight: 10)
//graphKrushkal.addEdge(from: node0, to: node2, weight: 6)
//graphKrushkal.addEdge(from: node0, to: node3, weight: 5)
//graphKrushkal.addEdge(from: node1, to: node3, weight: 15)
//graphKrushkal.addEdge(from: node2, to: node3, weight: 4)
//
//let (mst2, totalCost) = graphKrushkal.krushkalMST()
//
//print("Edges in the Minimum Spanning Tree: Krushkal")
//for edge in mst2 {
//    print("(\(edge.from.value), \(edge.to.value)) - weight: \(edge.weight ?? 100)")
//}
//
//print("Total cost of MST: \(totalCost)")

let node11 = Node(1)
let node21 = Node(2)
let node31 = Node(3)
let node41 = Node(4)
let node51 = Node(5)

let graph = Graph<Int>()
graph.nodes = [node11, node21, node31, node41, node51]

graph.addEdge(from: node11, to: node21)
graph.addEdge(from: node21, to: node31)
graph.addEdge(from: node31, to: node11)
graph.addEdge(from: node31, to: node41)
graph.addEdge(from: node41, to: node51)

//let sccs = graph.kosarajuSCC()
//
//print("Strongly Connected Components:")
//for scc in sccs {
//    print(scc.map { $0.value })
//}


func singleNumber(_ nums: [Int]) -> [Int] {
    var dict = [Int: Int]()
    for i in nums {
        dict[i, default: 0] += 1
    }
    return dict.filter { $0.value == 1 }.keys.map { Int($0) }
}
singleNumber([1,2,1,3,2,5])
