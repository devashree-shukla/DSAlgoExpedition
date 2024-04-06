## Overview

The Optimal Merge Pattern (OMP) is a greedy algorithm used primarily in minimizing the total cost or time of merging multiple sorted lists into one. It's similar in concept to the algorithm used in the construction of Huffman Trees and is particularly useful in file merging applications, where files are represented as sorted lists.

## Key Concepts

- Sorted Lists: The input to the problem is a set of sorted lists (or files) that need to be merged.

- Merge Cost: The cost of merging two lists is proportional to the sum of their lengths.

- Greedy Choice: At each step, merge the two smallest lists to minimize the overall merge cost.

## Problem Statement

Given a set of n sorted lists (or files), the task is to merge these lists into one single list in a way that minimizes the total merge cost. Assume merging two lists of sizes m and n incurs a cost of m+n.

## Approach

- Priority Queue: Use a priority queue (min-heap) to efficiently find and merge the two smallest lists at each step.

- Merge Steps:
    - Insert all list sizes into the priority queue.
    
    - While there are more than one lists left in the queue:
        - Remove the two smallest lists from the queue.
        - Merge them, and insert the size of the merged list back into the queue.
        - The cost of this merge operation is added to the total cost.

- Repeat until the queue has only one list left, which is the merged list containing all elements.

Note: MinHeap is a conceptual data structure here. In Swift, you might use a priority queue implementation or adapt a binary heap for this purpose.

## Complexity Analysis

### Time Complexity: 

O(n log n), where n is the number of lists. This comes from the insert and remove operations on the priority queue.

### Space Complexity: 

O(n), for storing the elements in the priority queue.

## Example

Given list sizes [4, 3, 2, 6], the optimal way to merge them incurs a total cost of 29.

Merge lists of size 2 and 3 (cost = 5), new sizes are [4, 5, 6].
Merge lists of size 4 and 5 (cost = 9), new sizes are [9, 6].
Merge lists of size 9 and 6 (cost = 15), final size is [15].
Total cost = 5 + 9 + 15 = 29.

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/9ae08eff-803e-4d9b-82b9-1cf6a412a7c5" width=350>
