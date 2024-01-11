#  Insertion Sort

The Insertion Sort algorithm is a simple and efficient method for sorting a small number of elements. Here's a quick guide to help you understand it for your interview:

## Concept

Basic Idea: Insertion Sort works similarly to how you might sort playing cards in your hands.
Process: It iterates through an input list, taking one element at a time and placing it in the correct position within a sorted section of the list.

## How it Works

Starting from the Second Element: The first element is considered sorted by default.

Select the Next Element: Move to the next element in the unsorted part of the list.

Compare and Insert: Compare this element with the sorted elements (starting from the largest sorted element).
Shift all elements larger than the current element to the right.
Insert the current element into its correct position.

Repeat: Continue this process for all elements.

## Example

Consider an array: [3, 1, 4, 1, 5, 9, 2, 6]

Start with the second element (1).
It's smaller than 3, so we move 3 to the right and insert 1 before it.
Continue this process, comparing each new element to those in the sorted section and inserting it in the correct position.

## Complexity

### Time Complexity:

Best Case: O(n) when the array is already sorted.

Average and Worst Case: O(n^2) for large or reverse-sorted arrays.

### Space Complexity: O(1) as it's an in-place sorting algorithm.

## Advantages

Simple Implementation: Easy to understand and implement.

Efficient for Small Data Sets: Works well for small or mostly sorted arrays.

Stable: Doesn't change the relative order of equal elements.

In-Place: Requires only a constant amount of additional memory space.


## Disadvantages

Not Efficient for Large Lists: The time complexity can be high for large unsorted lists.

## Use Cases

Ideal for small arrays or lists that are already mostly sorted.
Often used as a part of more complex algorithms like Shell Sort.


## Key points

- Function Definition: The insertionSort function takes an inout parameter, allowing the array to be sorted in place.
- Outer Loop: Iterates through each element in the array starting from the second element.
- Inner Loop: Continues as long as y is greater than 0 and the element at position y is less than the element at position y - 1.
- Swapping Elements: If the condition is true, the elements at positions y and y - 1 are swapped. This effectively shifts the smaller element towards the beginning of the array.
- Decrementing y: This moves the comparison backwards through the sorted portion of the array.
- Example Usage: An example array is provided to demonstrate how to call the function.
- This code is straightforward and should be easy to explain during an interview. It highlights the key aspects of the Insertion Sort algorithm in a clear and concise manner. Remember to explain the process as you walk through the code during your interview. Good luck!






