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
 
<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/abfeca61-856e-4123-8fd3-1a9929787e89" width="350">

## Types of Spanning Trees

- Minimum Spanning Tree (MST): 
    A spanning tree with weight less than or equal to the weight of every other spanning tree. The weight of a spanning tree is the sum of weights given to each edge of the spanning tree.

- Maximum Spanning Tree: 
    A spanning tree with weight greater than or equal to the weight of every other spanning tree.

## Algorithms for Minimum Spanning Tree

There are two famous algorithms to find the MST with minimum cost edges:
no of edges will be V - 1

- Kruskal's Algorithm: 
    Sorts all the edges of the graph by their weight in ascending order and starts adding them to the spanning tree if they don't form a cycle, until V−1 edges are added.
    - No cycle 
    - Best case : n - 1 edges
    - Worst case : e edges
    - Intermediate tree will be disconnected, at end will become connected

    (Ref - https://www.youtube.com/watch?v=huQojf2tevI&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=45&pp=iAQB)
    
- Prim's Algorithm: 
    Starts with an arbitrary node and grows the spanning tree by adding the cheapest edge from the graph that connects a vertex in the tree to a vertex outside the tree.
    - No cycle 
    - Best case : n - 1 edges
    - Worst case : e edges
    - Intermediate trees will be always in connected way 

    Both algorithms gives same minimum cost for edges in answer but technique is different

    (Ref - https://www.youtube.com/watch?v=_KX8GDvRzBc&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=46&pp=iAQB)

## Applications

- Network Design: Designing minimum cost networks like telecommunication networks, water supply networks, and electrical grids.
- Cluster Analysis: In data mining, to cluster data points into various groups.

Ref - https://www.youtube.com/watch?v=h6cUkkaKNHw&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=44
