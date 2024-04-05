- Radix Sort is a non-comparative sorting algorithm that sorts data with integer keys by grouping the keys by individual digits that share the same significant position and value (place value). 
- Unlike other sorting algorithms, Radix Sort processes multiple digits of the keys at once. 
- It's particularly efficient for sorting large sets of data. 

## Overview

- Type: Non-comparative integer sorting algorithm.
- Mechanism: Sorts numbers digit by digit starting from the least significant digit (LSD) to the most significant digit (MSD).
- Suitable for: Large sets of data, especially when the keys are uniformly distributed.

## How It Works

1. LSD Variant:
- Starting from the least significant digit (LSD), group the numbers based on the current digit.
- Use a stable sorting algorithm (like counting sort) to sort the groups.
- Repeat the process for each more significant digit, until you reach the most significant digit.

  <img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/0f1413fb-aa57-463c-a472-c57751fe3714" width="350">

2. MSD Variant:
- Similar to LSD, but starts from the most significant digit.
- Sorts and groups numbers based on the current digit using a stable sort, then recursively sorts each group (ignoring the current digit).

- Initial Step: Start with the most significant digit of all numbers.
Group numbers into buckets based on their most significant digit (0-9 for decimal numbers).

- Recursive Sorting: Within each bucket, sort the numbers based on the next significant digit. This process is recursive and continues until there are no more digits to sort by.

- Concatenation: Once all digits have been processed, concatenate the buckets in order to get the final sorted array.

## Complexity

### Time Complexity:

- Best, Average, and Worst: O(nk), where n is the number of elements, and k is the number of digits in the maximum number.

### Space Complexity: 

- O(n+k) due to the use of auxiliary arrays in the sorting process.

## Advantages

- Faster than comparison-based sorts (like QuickSort) for large datasets.
- Stable: Equal elements maintain their relative positions.
- Predictable running time, independent of the input data's order.

## Disadvantages

- Limited to integers or objects that can be represented as integers.
- Performance depends on the digit size (k)—the algorithm slows down as k increases.
- Requires additional space for counting and auxiliary arrays.

## Performance Analysis

- Data Size: Excels with large datasets.
- Data Distribution: Uniformly distributed keys across the significant digits benefit the most.
- Stability: Maintains the original order of duplicate elements, which is advantageous for certain applications.
- Memory Usage: Higher than in-place comparison sorts due to the need for additional arrays for buckets and counting.

Radix Sort's efficiency and stability make it a powerful choice for specific scenarios, especially when dealing with large volumes of data. However, its applicability is somewhat limited by the nature of the data it can sort effectively.

Ref - https://www.youtube.com/watch?v=9QSgBO9yjKU&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=28&pp=iAQB
