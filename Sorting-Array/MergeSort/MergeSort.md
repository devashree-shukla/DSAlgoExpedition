#  Merge Sort

The Merge Sort algorithm is a fundamental concept in computer science, often used in coding interviews to assess an understanding of sorting algorithms and recursion. Here's a quick guide to understanding Merge Sort:

### Concept:

Merge Sort is a divide and conquer algorithm. It divides the input array into two halves, calls itself for the two halves, and then merges the two sorted halves.

### Steps:

Divide: Split the array into two halves.
Conquer: Recursively sort each half.
Combine: Merge the two halves to produce a sorted array.

### Key Features:

Stable Sort: Doesn't change the relative order of elements with equal keys.
Time Complexity: O(n log n) in all cases (best, average, and worst).
Space Complexity: O(n) due to the use of additional space for merging.
Non-Adaptive: The run time does not change for a partially sorted array.
Out-of-Place: Requires additional space for merging.

### Example:

Consider an array [38, 27, 43, 3, 9, 82, 10].

Split into [38, 27, 43, 3] and [9, 82, 10].
Continue splitting until arrays are of size 1 or 0.
Merge subarrays in sorted order. For example, [38] and [27] merge into [27, 38].
Continue merging back up the tree.

### Pseudocode:

pseudocode
Copy code
function mergeSort(arr):
    if length(arr) > 1:
        mid = length(arr) / 2
        L = arr[0:mid]
        R = arr[mid:end]

        mergeSort(L)
        mergeSort(R)

        merge(L, R, arr)

function merge(L, R, arr):
    // merge the L and R arrays back into arr in sorted order

### Advantages & Disadvantages:

Advantages: Efficient for large datasets, stable sort.
Disadvantages: Slower compared to other algorithms for smaller tasks, more complex, and uses more memory.

### Applications:

Sorting linked lists
External sorting (like large file sorting)
Inversion count problems

### Visualization:

Imagine the process like a binary tree, where each node represents a call to mergeSort on a subset of the array. The leaves are the base cases (arrays of size 1), and the internal nodes represent the merging process.

### Interview Tips:

Understand the recursive nature of the algorithm.
Be able to write the code for both the merge and mergeSort functions.
Discuss the time and space complexity.
Compare with other sorting algorithms like QuickSort or BubbleSort.
By understanding these core concepts, you'll be well-prepared to discuss Merge Sort in an interview setting. Remember, practice writing the algorithm by hand and explaining each step clearly.
