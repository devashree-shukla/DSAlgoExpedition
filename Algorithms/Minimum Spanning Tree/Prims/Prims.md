## Prim's Algorithm

Prim's Algorithm starts with a single vertex and grows the MST by adding the cheapest edge from the graph that connects a vertex in the MST to a vertex outside the MST.

Example:

Starting from vertex A, Prim's algorithm looks at the edges connecting A to other vertices and selects the smallest one. It then considers the set of edges from the MST (now consisting of A and another vertex) to vertices not yet in the MST, and again chooses the smallest.

Step 1: Start from a vertex.
Step 2: Add the smallest edge connecting the MST to a new vertex.
Repeat until all vertices are included.