Heap sort is an efficient comparison-based sorting algorithm that uses a binary heap data structure. Here's a quick overview to help you prepare for your interview:

# Concept: 

Heap sort works by visualizing the elements of the array to be sorted as a binary tree and then creating a Binary Heap from this tree. A Binary Heap is a Complete Binary Tree where items are stored in a special order such that the value in a parent node is greater (in a max heap) or smaller (in a min heap) than the values in its two children nodes.

# Steps of Heap Sort:

- Build a Max Heap: Start building the heap from the first index of the array. The idea is to arrange the array in a way that the largest element is at the root of the heap.
- Heapify Process: After the max heap is built, the largest item is stored at the root of the heap. Replace it with the last item of the heap followed by reducing the size of the heap by 1. Finally, heapify the root of the tree.
- Repeat Heapify: Repeat the above process for the remaining heap.

Heapify Explained: Heapify is the process of creating a heap from a binary tree. It ensures that the binary tree maintains the max heap (or min heap) property. This is done by moving the largest (or smallest) element to the root.

## Performance:

### Time Complexity: 

The time complexity of Heap Sort is O(n log n) for all the cases (best case, average case, and worst case) as the tree is always balanced.

### Space Complexity: 

O(1) Heap sort is an in-place algorithm.

## Advantages:

Efficient for large data sets.

Better than simpler algorithms like bubble sort or insertion sort.

## Disadvantages:

Relatively complex implementation.

Not as efficient as quick sort or merge sort for smaller tasks.

Use Cases: It's particularly good in applications where you want to sort large data sets or need to extract the largest (or smallest) elements repeatedly, like in Heap Priority Queue.

![WhatsApp Image 2024-04-02 at 2 02 00 PM (1)](https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/54caee25-58d7-4955-bee6-d4e8de519ca1)

Ref - https://www.youtube.com/watch?v=nJ6FdAIr_6g&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=37