Greedy algorithms are a class of algorithms that build up a solution piece by piece, always choosing the next piece that offers the most immediate benefit. They are often used for optimization problems. 

## Core Concept

### Greedy Choice Property: 

The global optimum can be arrived at by selecting the local optimum at each step.

### Optimal Substructure: 

A problem exhibits optimal substructure if an optimal solution to the problem contains optimal solutions to the sub-problems.

Follows local optimal choice of at any stage without focusing on global optimal solution 
- Feasible solution (Selection based)
- Optimal solution (Refers to Min cost, Max profilt, Min risk)

## When to Use

- When a problem can be broken down into stages, with a decision required at each stage that leads to an optimal solution.

- When the greedy choice property holds, ensuring that making a locally optimal choice will lead to a globally optimal solution.

## Common Problems Solved Using Greedy Algorithms / Applications

- Huffman Coding: Used for data compression.

- Activity Selection: Select the maximum number of activities that don't overlap.

- Fractional Knapsack: Maximize the total value of items in a knapsack without exceeding its capacity.

- Job Sequencing Problem: Maximize the number of jobs done given their deadlines.

- Prim’s and Kruskal’s Algorithms for Minimum Spanning Tree: Find the Minimum Spanning Tree (MST) of a graph.

- Optimal merge pattern

- Dijkstra algorithm 

## Complexity Analysis

- The time complexity of greedy algorithms depends on the problem being solved and the data structures used for the algorithm.
- For example, Kruskal's algorithm has a time complexity of O(E log E) because it requires sorting edges of the graph.
- Prim’s algorithm can vary from O(V^2) using adjacency matrix to O(E + log V) using a binary heap and adjacency list.

## Performance Analysis

- Greedy algorithms are generally faster and easier to understand; however, they don’t always provide the best solution.
- They work well when the problem guarantees an optimal solution through local optimization at each step.
- The efficiency of a greedy algorithm can be significantly influenced by the choice of data structures.

## Comparison with Other Algorithms

- Greedy vs. Dynamic Programming: Greedy algorithms make decisions from the given solution domain without going back, whereas dynamic programming can revisit previous decisions.

- Greedy vs. Divide and Conquer: Both break down problems into smaller parts. However, divide and conquer approaches combine solutions to sub-problems to solve the original problem, while greedy approaches make a decision at each step without revisiting.

## Limitations

- Greedy algorithms cannot be used for all problems, especially where a greedy choice at one step can lead to an overall non-optimal solution.

- Identifying whether a greedy strategy will work for a particular problem can be challenging.