- The Bellman-Ford algorithm is a graph search algorithm that computes the shortest paths from a single source vertex to all of the other vertices in a weighted digraph (directed graph). 
- Unlike Dijkstra's algorithm, which only works with graphs without negative weight edges, the Bellman-Ford algorithm can accommodate graphs containing edges with negative weights as long as there are no negative weight cycles.

## Conceptual Overview

The algorithm works by overestimating the length of the path from the starting vertex to all other vertices, then iteratively relaxing those estimates by finding new paths that are shorter than the previously overestimated paths.

### Here's a step-by-step overview:

### Initialization: 

Start with a distance to all vertices set to infinity, except for the source vertex, which is set to zero.

### Relaxation: 

For each edge (u, v) with weight w in the graph, if the distance to the target vertex v through u is less than the known distance to v, update the shortest distance to v. This process is repeated for every edge in the graph and done V-1 times where V is the number of vertices.

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/4ab9f934-2593-43e4-97e4-e736e295322f" width=350>

### Negative Cycle Detection: 

After V-1 iterations, perform one more iteration checking for any edge that can be relaxed. If any edge can be relaxed, it means there is a negative weight cycle, and therefore, no shortest path exists (since the path can always get shorter by looping the cycle).

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/681e6472-6d13-43b0-82cb-c1f5ae68964e" width=350>

## Pesudo code

BellmanFord(G, V, E, S)

Step 1:

for each vertex v in EG do...........O(v)
    d(v) = infinite
    d(source) = 0

Step 2:

for i = 1 to |v - 1|...........O(v e)
    for each edge EG do
        Relax(u, v, w)

Step 3:

for each edge EG do
    if d[u] + w(u, v) < d[v] {
        return "Graph contains negative edge cycle"
    }
    return d

So, Total complexity = O(v) + O(v e)

### Real-life Scenario

Consider you're building a routing application for logistics where roads have varying costs (which could be negative due to rebates or other factors), and you need to find the most cost-effective routes. The Bellman-Ford algorithm can handle such scenarios, including the detection of routes that might be exploited for infinite rebates (negative cycles).

