# DSAlgoExpedition
My adventure and exploration in learning and practicing data structures and algorithms

| Algorithm | Best Time Complexity | Average Time Complexity | Worst Time Complexity | Space Complexity | Implementation Method | Comparison-Based | Category |
|-----------|----------------------|-------------------------|-----------------------|------------------|-----------------------|------------------|----------|
| **Searching Algorithms** | | | | | | | |
| Linear Search | O(1) | O(n) | O(n) | O(1) | Iterative | No | Brute Force |
| Binary Search | O(1) | O(log n) | O(log n) | O(1) | Iterative or Recursive | Yes | Divide and Conquer |
| Hashing | O(1) | O(1) | O(1) |  | Hashtable | No | Hash function & Key based |
| DFS | O(V + E) / O(n) | O(V + E) / O(n) | O(V + E) / O(n) |  | Traversal | Yes |  |
| BFS | O(V + E) / O(n) | O(V + E) / O(n) | O(V + E) / O(n) |  | Traversal | Yes | |
| **Sorting Algorithms** | | | | | | | |
| Bubble Sort | O(n) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Brute Force |
| Insertion Sort | O(n) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Incremental Insertion |
| Selection Sort | O(n^2) | O(n^2) | O(n^2) | O(1) | Iterative | Yes | Incremental Selection |
| Merge Sort | O(n log n) | O(n log n) | O(n log n) | O(n) | Recursive | Yes | Divide and Conquer |
| Quick Sort | O(n log n) | O(n log n) | O(n^2) | O(log n) | Recursive | Yes | Divide and Conquer |
| Heap Sort | O(n log n) | O(n log n) | O(n log n) | O(1) | LSD/MSD | Yes | Selection |
| Radix Sort | O(nk) | O(nk) | O(nk) | O(n + k) | Int/String based | No | integer keys by grouping the keys by individual digits that share the same significant position and value (place value) |
| Couting Sort | O(nk) | O(nk) | O(nk) | O(n + k) | Interger, Range based, Distribution based | No | integer sorting algorithm that operates by counting the number of objects that have each distinct key value |
| Bucker Sort | O(nk) | O(nk) | O(n^2) | O(nk) | Float, Distribution based | No | Float sorting algorithm with ability to sort large datasets quickly when the data is uniformly distributed |

- Linear Search: Simplest search technique; checks each element in sequence.
- Binary Search: Efficient for sorted arrays; repeatedly divides the search interval in half.
- Bubble Sort: Repeatedly swaps adjacent elements if they are in the wrong order.
- Insertion Sort: Builds the final sorted array one item at a time.
- Selection Sort: Selects the smallest (or largest) element from an unsorted sublist and swaps it with the first unsorted element.
- Merge Sort: Divides the array into halves, sorts them independently, and then merges them.
- Quick Sort: Employs a divide-and-conquer strategy to sort the list or array.
- Heap Sort: Converts the array into a heap structure, repeatedly removing the largest element and rebuilding the heap.
