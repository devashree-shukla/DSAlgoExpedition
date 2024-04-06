# Huffman Coding Problem Revision Notes

## Overview

Huffman Coding is an algorithm used for lossless data compression. It assigns variable-length codes to input characters, with shorter codes for more frequent characters.

### Key Concepts

- **Frequency Table**: Counts the occurrence of each character in the input data.

- **Priority Queue**: A data structure used to efficiently select the least frequent characters during tree construction.

- **Huffman Tree**: A binary tree where each leaf node represents a character. The path from the root to a leaf represents the character's binary code.

- **Variable-Length Codes**: Characters are encoded with variable-length codes, unlike fixed-length encoding schemes.

## Problem Statement

Given a string (or any data stream), create a Huffman Tree to encode the string and then decode it back using the tree. The goal is to minimize the total length of the output encoded data.

## Approach

1. **Build Frequency Table**: Determine the frequency of each character in the input.

2. **Create Leaf Nodes**: For each character, create a leaf node with its frequency.

3. **Build Huffman Tree**:
   - Insert all leaf nodes into a priority queue (min-heap) based on frequency.
   - While there is more than one node in the queue:
     - Remove the two nodes of the highest priority (lowest frequency) from the queue.
     - Create a new internal node with these two nodes as children and with a frequency equal to the sum of the two nodes' frequencies.
     - Add the new node to the priority queue.

4. **Generate Codes**: Traverse the Huffman Tree from the root to leaves and assign codes to characters.

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/112f2def-7c6b-4747-91b2-b37f0141c867" width=350>

## Complexity Analysis

### Time Complexity: 

O(n log n), where n is the number of unique characters. The log n term comes from insertions into the priority queue.

### Space Complexity: 

O(n), for storing the Huffman Tree.

## Encoding and Decoding

### Encoding:

Traverse the path to each character in the Huffman Tree, accumulating '0's and '1's to form the character's bitstring.

### Decoding: 

Traverse the Huffman Tree according to the encoded bitstring, moving left for '0' and right for '1', until reaching a leaf node (character).
