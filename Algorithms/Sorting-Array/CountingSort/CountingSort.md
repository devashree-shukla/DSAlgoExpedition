- Counting Sort is an integer sorting algorithm that operates by counting the number of objects that have each distinct key value. 
- Then, it does some arithmetic to calculate the position of each object in the output sequence. 
- It's most effective when the range of potential items (k) is not significantly greater than the number of items to be sorted (n). 

## Overview

- Type: Non-comparative sorting algorithm.
- Mechanism: Counts occurrences of each value, then uses these counts to position elements directly.
- Suitable for: Small range of integers, especially when k is O(n).

Mainly depends on two things :
1. Given input size n
2. Given range of input is k

## How It Works

- Count each occurrence of each value within the input collection.
- Accumulate the counts to determine the positions of each value.
- Place each item in its correct position in the output array.

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/0f26095b-712a-4823-942a-9c279e3f1c2a" width="350">

## Complexity

### Time Complexity: 

O(n+k), where n is the number of elements and k is the range of input.

### Space Complexity: 

O(k), due to the auxiliary space needed for the count array.

## Advantages

- Efficient: For small ranges of integers and large datasets.
- Stable: Maintains the relative order of equal elements.
- Linear Time: Achieves sorting in linear time under certain conditions.

Best suitable if inout range is fixed 

## Disadvantages

- Limited Use: Not suitable for sorting large ranges of numbers or non-integer keys.
- Extra Space: Requires additional memory proportional to the range of data. (Eg: If input is 2, 20000, 4, 6, 8 etc then not suitable)
