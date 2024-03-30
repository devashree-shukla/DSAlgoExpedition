# BubbleSort

Bubble Sort is a simple sorting algorithm that works by repeatedly stepping through the list to be sorted, comparing each pair of adjacent items, and swapping them if they are in the wrong order. Here's a quick overview to help you understand and explain it in an interview:

Concept: Bubble Sort is a comparison-based algorithm in which each pair of adjacent elements is compared and the elements are swapped if they are not in order. This process is repeated until no swaps are needed, which means the list is sorted.

## How It Works:

Starting from the first element of the array (or list), compare the current element with the next element.

If the current element is greater than the next element, swap them.

Move to the next pair of elements and repeat the process.

After each pass through the array, the largest element 'bubbles up' to its correct position at the end of the array.

This process is repeated for all elements, reducing the number of elements to be compared in each pass.

## Performance:

### Time Complexity:

Best Case: **O(n)** when the array is already sorted.

Average and Worst Case: **O(n^2)** due to the nested loops.

### Space Complexity: 

O(1) as it only requires a single additional memory space for the swapping process.

## Advantages:

**Simplicity**: Easy to understand and implement.

**In-Place:** Does not require extra space for sorting.

## Disadvantages:

**Inefficient for large lists:** The time complexity makes it impractical for lists of a large number of elements.

**Not Adaptive:** It does not break out early if the list becomes sorted before the end of the process.

## Example:

Let's consider a small array [5, 3, 8, 4, 2]. Here's how Bubble Sort would sort it:

First Pass: [3, 5, 4, 2, 8] (5 and 8 move to their correct positions)

Second Pass: [3, 4, 2, 5, 8]

Third Pass: [3, 2, 4, 5, 8]

Fourth Pass: [2, 3, 4, 5, 8] (Array is sorted, but the algorithm does not know if it is completed)

The algorithm needs one last pass without any swap to know it is sorted.

Use Cases: Bubble Sort is used when complexity is not an issue, and ease of implementation is a priority. It's useful for educational purposes and small datasets.

Understanding this concept and being able to explain it clearly is great for an interview. Remember to also discuss where it's practical to use Bubble Sort and where it's not due to its inefficiency with large datasets.

## Key Points:

- This function takes an inout array of integers, allowing it to be modified in place.
- The outer loop runs through the entire array.
- The inner loop compares adjacent elements and swaps them if they are in the wrong order.
- As the algorithm progresses, larger elements 'bubble' to the end of the array.
- The n - i - 1 in the inner loop reduces the number of comparisons in each subsequent pass, as the last elements get sorted.
- Remember, the simplicity of Bubble Sort is countered by its inefficiency with large datasets, so it's typically used for educational purposes or small arrays.
