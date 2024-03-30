# DSAlgoExpedition
My adventure and exploration in learning and practicing data structures and algorithms

| Algorithm | Best Time Complexity | Average Time Complexity | Worst Time Complexity | Space Complexity | Implementation Method | Comparison-Based | Category |
|-----------|----------------------|-------------------------|-----------------------|------------------|-----------------------|------------------|----------|
| **Searching Algorithms** | | | | | | | |
| Linear Search | O(1) | O(n) | O(n) | O(1) | Iterative | No | Brute Force |
| Binary Search | O(1) | O(log n) | O(log n) | O(1) | Iterative or Recursive | Yes | Divide and Conquer |
| **Sorting Algorithms** | | | | | | | |
| Bubble Sort | O(n) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Brute Force |
| Insertion Sort | O(n) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Incremental Insertion |
| Selection Sort | O(n^2) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Incremental Selection |
| Merge Sort | O(n log n) | O(n log n) | O(n log n) | O(n) | Recursive | Yes | Divide and Conquer |
| Quick Sort | O(n log n) | O(n log n) | O(n^2) | O(log n) | Recursive | Yes | Divide and Conquer |
| Heap Sort | O(n log n) | O(n log n) | O(n log n) | O(1) | Iterative | Yes | Selection |

- Linear Search: Simplest search technique; checks each element in sequence.
- Binary Search: Efficient for sorted arrays; repeatedly divides the search interval in half.
- Bubble Sort: Repeatedly swaps adjacent elements if they are in the wrong order.
- Insertion Sort: Builds the final sorted array one item at a time.
- Selection Sort: Selects the smallest (or largest) element from an unsorted sublist and swaps it with the first unsorted element.
- Merge Sort: Divides the array into halves, sorts them independently, and then merges them.
- Quick Sort: Employs a divide-and-conquer strategy to sort the list or array.
- Heap Sort: Converts the array into a heap structure, repeatedly removing the largest element and rebuilding the heap.


## Algorithm Classification:

Algorithms can be classified into several types based on different criteria, such as their approach to solving problems or their operational methodology. Here's a broad categorization, including both comparison-based and non-comparison-based algorithms, along with other types:

### Comparison-Based Algorithms:

These algorithms sort elements by comparing them with each other.
Examples: Bubble Sort, Selection Sort, Insertion Sort, Merge Sort, Quick Sort, Heap Sort.

### Non-Comparison-Based Algorithms:

These algorithms sort elements without comparing them directly with each other.
Examples: Counting Sort, Radix Sort, Bucket Sort.

### Divide and Conquer Algorithms:

These algorithms divide the problem into smaller subproblems, solve these subproblems independently, and then combine their solutions.
Examples: Merge Sort, Quick Sort, Binary Search.

### Dynamic Programming Algorithms:

These algorithms solve problems by breaking them down into simpler subproblems and storing the results of these subproblems to avoid redundant computations.
Examples: Fibonacci number calculation, Knapsack problem, Shortest path problem by Bellman-Ford.

### Greedy Algorithms:

These algorithms make the locally optimal choice at each stage with the hope of finding a global optimum.
Examples: Kruskal’s and Prim’s algorithm for Minimum Spanning Tree, Dijkstra’s algorithm for Shortest Path.

### Brute Force Algorithms:

These algorithms try every possible solution to find the desired solution.
Examples: Linear Search, Travelling Salesman Problem using exhaustive search.

### Backtracking Algorithms:

These algorithms involve searching for a solution by trying out different solutions and abandoning a solution as soon as it is determined that the solution is not viable.
Examples: N-Queens problem, Sudoku solver, Permutations and combinations.

### Randomized Algorithms:

These algorithms make random choices during their execution to achieve good performance on average.
Examples: Randomized Quick Sort, Monte Carlo algorithms.

### Parallel Algorithms:

These algorithms execute multiple operations simultaneously, often using multi-core or multiple processors.
Examples: Parallel versions of Merge Sort, Matrix multiplication.

### Recursive Algorithms:

These algorithms solve the base case directly and then solve larger problems by calling themselves with simpler inputs.
Examples: Binary Search, Quick Sort, Tree Traversals.
Each type of algorithm has its unique characteristics and is chosen based on the specific requirements and constraints of the problem at hand. Understanding these different types of algorithms is crucial for computer science students and professionals, as it broadens the range of tools available for problem-solving.
