Kruskal's algorithm is a popular and efficient method used in graph theory to find the minimum spanning tree (MST) for a connected, undirected graph. The minimum spanning tree is a subset of the graph's edges that connects all vertices together, without any cycles, and with the minimum possible total edge weight.

## How Kruskal's Algorithm Works

- Sort all the edges in non-decreasing order of their weight.

- Pick the smallest edge. Check if it forms a cycle with the spanning tree formed so far. If the cycle is not formed, include this edge. Otherwise, discard it.

- Repeat step 2 until there are (V-1) edges in the spanning tree, where V is the number of vertices in the graph.

The algorithm uses a disjoint-set data structure (also known as a union-find data structure) to keep track of the subsets of vertices that are already included in the MST, which helps to avoid cycles.

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/915d2c5f-5c4a-47c9-8392-34e99688e1fa" width="350">

### Example:

Imagine a graph with vertices A, B, C, D, and edges connecting them with weights. Kruskal's algorithm sorts the edges in ascending order by weight and starts including them in the MST from the smallest, ensuring no cycles are formed.

Step 1: Start with the smallest edge.
Step 2: Add the next smallest edge that does not form a cycle.
Step 3: Repeat until you have a spanning tree.

## Use Case

Kruskal's algorithm is widely used in network design. For example, when designing a new telecommunications network, laying cables to connect a set of cities, Kruskal's algorithm can be used to ensure that all cities are connected with the least amount of cable, thus minimizing the overall cost.

## Explanation

The Edge class represents an edge between two vertices (nodes) and has a weight.
The Graph class represents the entire graph. It has methods for adding edges and for constructing the MST using Kruskal's algorithm.
The kruskalMST method sorts all edges by weight, then iteratively selects the smallest edge and adds it to the MST if it doesn't create a

## Performance Analysis of Kruskal's Algorithm

The efficiency of Kruskal's algorithm depends significantly on the implementation of the union-find data structure used to detect cycles. The performance can be broken down as follows:

- **Sorting Edges:** Kruskal's algorithm starts by sorting all the edges by their weight, which takes \(O(E \log E)\) time for an array-based sort, where \(E\) is the number of edges in the graph.

- **Union-Find Operations:** For each edge, we perform two find operations and possibly one union operation. If we use a disjoint-set data structure with both path compression and union by rank, each of these operations can be performed in \(O(\alpha(V))\) time, where \(\alpha\) is the inverse Ackermann function, which grows extremely slowly, and \(V\) is the number of vertices in the graph. In practical terms, \(\alpha(V)\) is considered to be effectively constant, even for very large graphs.

- **Overall Time Complexity:** Taking both the sorting of edges and the union-find operations into account, the overall time complexity of Kruskal's algorithm is \(O(E \log E)\). Since in most sensible implementations of a graph, \(E\) can be at most \(V^2\) (in a complete graph), and \(\log(V^2) = 2\log(V)\), which is O(\log V), the time complexity can also be viewed as \(O(E \log V)\).
Best case O(n loge)
Worst case O(e loge)

## Advantages

1. **Simplicity:** Kruskal's algorithm is straightforward and easy to implement, especially when the graph is represented as an edge list.

2. **Flexibility:** It works well for sparse graphs because it deals with edges independently and in sorted order.

3. **Applicability:** It can be used to find the minimum spanning forest of a graph that isn’t necessarily connected.

4. **Optimality:** It always finds the minimum spanning tree (MST) of a graph if the graph is connected.

## Disadvantages

1. **Not as Efficient for Dense Graphs:** For graphs with a large number of edges, the initial sorting of the edges might become a bottleneck, making Kruskal's less efficient compared to other algorithms like Prim's, especially on dense graphs.

2. **Extra Space for Sorting:** Requires additional space to hold all the edges before sorting them, which might be an issue for very large graphs.

3. **Cycle Detection Overhead:** Although union-find is efficient, the algorithm still needs to check for cycles, which introduces extra steps compared to some other MST algorithms.

## Use Cases and Practicality

Kruskal's algorithm is particularly efficient and suitable for sparse graphs where the number of edges \(E\) is much less than the square of the number of vertices \(V^2\). Its ability to work on the edges independently also makes it a good choice for distributed algorithms, where the graph's edges can be processed in parallel across different nodes of a computing cluster. However, for dense graphs, where \(E\) is close to \(V^2\), Prim's algorithm might be a better choice due to its ability to focus on vertices rather than edges, potentially leading to less computational overhead.
