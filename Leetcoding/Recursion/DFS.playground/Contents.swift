import Foundation

class Node: Hashable {
    let id: Int
    
    init(id: Int) {
        self.id = id
    }
    
    static func == (lhs: Node, rhs: Node) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

class Edge {
    let from: Node
    let to: Node
    let weight: Int
    
    init(from: Node, to: Node, weight: Int) {
        self.from = from
        self.to = to
        self.weight = weight
    }
}

class Graph {
    private var adjacencyList: [Node: [Edge]]
    
    init() {
        adjacencyList = [:]
    }
    
    func addEdge(from: Node, to: Node, weight: Int) {
        let edge = Edge(from: from, to: to, weight: weight)
        if adjacencyList[from] == nil {
            adjacencyList[from] = []
        }
        if adjacencyList[to] == nil {
            adjacencyList[to] = []
        }
        adjacencyList[from]?.append(edge)
        
        // Since it's an undirected graph, add an edge in the other direction as well
        let reverseEdge = Edge(from: to, to: from, weight: weight)
        adjacencyList[to]?.append(reverseEdge)
    }
    
    func dijkstra(source: Node) -> [Node: Int] {
        var distances = [Node: Int]()
        var priorityQueue = PriorityQueue<(node: Node, distance: Int)>(sort: { $0.distance < $1.distance })
        var visited = Set<Node>()
        
        // Initialize distances
        for node in adjacencyList.keys {
            distances[node] = Int.max
        }
        distances[source] = 0
        
        // Start from the source node
        priorityQueue.enqueue((node: source, distance: 0))
        
        while let current = priorityQueue.dequeue() {
            let currentNode = current.node
            let currentDistance = current.distance
            
            if visited.contains(currentNode) {
                continue
            }
            visited.insert(currentNode)
            
            if let edges = adjacencyList[currentNode] {
                for edge in edges {
                    let newDistance = currentDistance + edge.weight
                    if newDistance < distances[edge.to]! {
                        distances[edge.to] = newDistance
                        priorityQueue.enqueue((node: edge.to, distance: newDistance))
                    }
                }
            }
        }
        
        return distances
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

// Example usage
let node0 = Node(id: 0)
let node1 = Node(id: 1)
let node2 = Node(id: 2)
let node3 = Node(id: 3)

let graph = Graph()
graph.addEdge(from: node0, to: node1, weight: 4)
graph.addEdge(from: node0, to: node2, weight: 1)
graph.addEdge(from: node2, to: node1, weight: 2)
graph.addEdge(from: node1, to: node3, weight: 1)
graph.addEdge(from: node2, to: node3, weight: 5)

let source = node0
let distances = graph.dijkstra(source: source)
print("Shortest distances from node \(source.id):")
for (node, distance) in distances {
    print("To node \(node.id): \(distance)")
}

