#  Selection Sort

Selection sort is a simple comparison-based sorting algorithm. Here's a quick overview to help you prepare for your interview:

Concept: Selection sort divides the input list into two parts: a sorted sublist of items which is built up from left to right at the front (left) of the list, and a sublist of the remaining unsorted items that occupy the rest of the list. Initially, the sorted sublist is empty, and the unsorted sublist is the entire input list.

## How it Works:

Find the smallest (or largest, depending on sorting order) element in the unsorted sublist.
Swap it with the leftmost unsorted element (putting it in sorted order).
Move the sublist boundaries one element to the right.

## Algorithm Steps:

Start from the first element of the array.
Compare this element with all other elements in the array in a search for the smallest (or largest) element.
After completing the first pass through the list, swap the smallest (or largest) element found with the first element.
Repeat this process for the remainder of the list (starting from the second element, then third, and so on) until the entire array is sorted.

## Performance:

### Time Complexity: 
O(n^2), where n is the number of items being sorted. Even if the array is already sorted, the algorithm will still execute in O(n^2) time, making it inefficient on large lists.
### Space Complexity: 
O(1) – it only requires a single additional memory space for the temporary variable used for swapping.

## Advantages and Disadvantages:


### Advantages: 
Simple and easy to understand. No additional memory is required (in-place sorting).

### Disadvantages: 
Not efficient for large lists. Has poor performance compared to more advanced algorithms like quicksort, mergesort, or heapsort.

## Use Cases: Suitable for small arrays or when memory space is a premium. It's often used for educational purposes to teach the basics of sorting algorithms.

Understanding these key points will help you explain selection sort confidently in your interview. Remember, while it's not the most efficient sorting algorithm, it's often asked about to test your basic understanding of sorting algorithms and data structures.

## Keypoints

- The function selectionSort takes an array of integers as an input and sorts it in place.
- The outer loop iterates through each element of the array.
- The inner loop finds the minimum element in the unsorted part of the array.
- If the minimum element is not the element being considered in the outer loop, a swap is performed.
- Finally, the sorted array is printed out.
- This code is concise and should be easy to remember. It demonstrates the fundamental concept of the Selection Sort algorithm in Swift, making it ideal for interview discussions and educational purposes. Feel free to use and modify this code as needed for your GitHub repository.
