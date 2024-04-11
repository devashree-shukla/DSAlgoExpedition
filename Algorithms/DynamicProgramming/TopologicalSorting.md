- It is linear ordering of graph vertices such that for every directed edge uv from vertex v, u comes before v in the ordering

- Linear running time complexity

- Works on DAG (Direct acyclic graph)

- Topological ordering can be multiple, not unique

- To write a topological order of graph, can use DFS or BFS or Kahn's and using stack

Example:

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/ddbde90a-6a36-4f84-8637-b9c7205212b7" width=350>

- Space complexity O(V) because stack will have maximum size equal to no of vertices
- Time complexity O(V + E) beacuase need to visit all node via all edges

