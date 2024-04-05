- Widely used in google map
- Finding minimum path to reach all destination nodes from single source 
- Also called Minimization algorithm
- Uses greedy approach to provide optimal ans here
- Works on both type of graphs, directed or undirected graphs

Dijkstra's algorithm is a fundamental algorithm in computer science for finding the shortest paths from a single source vertex to all other vertices within a graph, which may represent, for example, road networks. It's especially important in the fields of computer networking and geographic information systems. The algorithm works for both directed and undirected graphs with non-negative weights on the edges.

## Conceptual Overview

Dijkstra's algorithm iteratively updates the distance from the source to each vertex. It maintains a set of nodes whose shortest distance from the source is already known and a set of nodes whose shortest distance is not yet determined. The steps are as follows:

### Initialization: 

Set the initial node as the current node and assign to each node a tentative distance value: zero for the initial node and infinity for all other nodes. Set the initial node as current.

### Relaxation: 

For the current node, consider all of its unvisited neighbors and calculate their tentative distances through the current node. Compare the newly calculated tentative distance to the current assigned value and assign the smaller one.

### 

Update: When we have considered all of the unvisited neighbors of the current node, mark the current node as visited. A visited node will not be checked again.

Selecting the next node: Select the unvisited node that is marked with the smallest tentative distance, set it as the new "current node," and go back to step 2.

The process repeats until all the vertices in the graph are visited.

## Core of Dijkstra algorithm

Relaxation procedure:

if d(u) + C(u, v) < d(v) then
    d(v) = d(u) + C(u, v)

## Pesudo code

Dijkstra(Graph, Source)

Create vertex set Q

for each vertex v in Q...........O(v) -> Build heap
    d(v) = infinite
    add v to Q...................O(v)
    d(source) = 0

while Q is not empty.............O(v log v)
    u = extract min[Q]
    for each neighbour v of u...........O(E log v)
        Relax(u,v)

So, Total complexity = O(v) + O(v) + O(v log v) + O(E log v)

Overall Time complexity = O(E log v)

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/61da40f6-d38c-4a2f-a5f4-e6b3b4bebe09" width=350>

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/41bd66cd-532b-4bcc-91c5-9031c557d39a" width=350>

## For negatvie weight

- sometimes do not work

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/1dfe2623-5be6-4229-a677-8a46ffcfa541" width=350>

## Note

This example simplifies the priority queue for clarity. In practice, you'd need an efficient priority queue implementation to manage the vertices sorted by their current shortest path estimate.

## Real-life Scenario

Imagine you're developing an app that calculates the quickest route for emergency services in a city. By modeling the city as a graph where intersections are vertices and roads are edges, you can use Dijkstra's algorithm to instantly find the quickest path from the hospital to any other location.

Ref :
https://www.youtube.com/watch?v=Gd92jSu_cZk&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=47&pp=iAQB

https://www.youtube.com/watch?v=_0s2e5SqhSk&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=48&pp=iAQB

https://www.youtube.com/watch?v=R3g2SSlyY_0&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=49&pp=iAQB

