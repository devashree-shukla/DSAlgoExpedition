## Definition

- A Spanning Tree of an undirected graph is a subgraph that is a tree and connects all the vertices together. A single graph can have many different spanning trees.

- A graph must be connected to have a spanning tree.

- A Minimum Spanning Tree is a subset of the edges of a connected, edge-weighted undirected graph that connects all the vertices together, without any cycles and with the minimum possible total edge weight.

## Properties

- A spanning tree has exactly V−1 edges, where V is the number of vertices in the graph.
- A spanning tree does not have cycles.
- Removing an edge from a spanning tree will make it disconnected.
- Adding an edge to a spanning tree will create a cycle.

A connected subgraph 'S' of graph G(V, E) is said to be spanning tree iff
1. 'S' should contain all 'V' of 'G'
2. 'S' should contain (|V| - 1) edges 'E' , making all vertices reachable
 
 

## Types of Spanning Trees

- Minimum Spanning Tree (MST): 
    A spanning tree with weight less than or equal to the weight of every other spanning tree. The weight of a spanning tree is the sum of weights given to each edge of the spanning tree.

- Maximum Spanning Tree: 
    A spanning tree with weight greater than or equal to the weight of every other spanning tree.

## Algorithms for Minimum Spanning Tree

There are two famous algorithms to find the MST:

- Kruskal's Algorithm: 
    Sorts all the edges of the graph by their weight in ascending order and starts adding them to the spanning tree if they don't form a cycle, until V−1 edges are added.

- Prim's Algorithm: 
    Starts with an arbitrary node and grows the spanning tree by adding the cheapest edge from the graph that connects a vertex in the tree to a vertex outside the tree.

## Applications

- Network Design: Designing minimum cost networks like telecommunication networks, water supply networks, and electrical grids.
- Cluster Analysis: In data mining, to cluster data points into various groups.

Ref - https://www.youtube.com/watch?v=h6cUkkaKNHw&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=44
