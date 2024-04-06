- The Knapsack problem is a popular optimization problem in computer science, often encountered in algorithmic interviews. 
- It revolves around a scenario where you have a set of items, each with a weight and a value, and a knapsack with a limited capacity. 

The goal is to maximize the total value of the items you can carry in the knapsack without exceeding its weight capacity.

## Types of Knapsack Problem

1. 0/1 Knapsack: 

Each item can either be taken or left (cannot be broken down). Typically solved using Dynamic Programming.

2. Fractional Knapsack: 

Items can be divided into smaller parts, allowing fractions of items to be taken. Usually solved using Greedy Algorithms.

## 0/1 Knapsack Problem

### Concept

You are given weights and values of n items and a knapsack with a capacity W. Put these items in the knapsack in such a way that the total weight is less than or equal to W, and the total value is maximized.

### Solution Approach

Dynamic Programming is used here, where the problem is broken down into smaller, manageable sub-problems. Each sub-problem involves considering whether to include an item in the knapsack or not, based on the item's weight and value, and the remaining capacity of the knapsack.

### Complexity

### Time Complexity: 

O(nW), where n is the number of items and W is the capacity of the knapsack.

### Space Complexity: 

O(nW), for the DP table.


## Fractional Knapsack Problem

### Concept

Similar to the 0/1 Knapsack, but you can take fractions of an item. This allows for a greedy approach to find the optimal solution.

### Solution Approach

Sort the items by their value/weight ratio in descending order. Then, fill the knapsack with the item or fraction of an item that has the highest ratio until the knapsack is full.

### Pesudo code

for i = 1 to n
Calculate profit/wight......................................O(n)

Sort objects in decreasing order of p/w ratio...............O(n log n)

for i = 1 to n
    if M > 0 and W[i] <= M
        M = M - W[i]
        P = P + p[i]
    else 
        break

    if M > 0
        P = P + P[i](M / W[i])

### Complexity

### Time Complexity: 

O(n log n), primarily due to the sorting step.

### Space Complexity: 

O(1), not considering the input size.