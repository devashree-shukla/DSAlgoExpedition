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

## Huffman Tree Construction Pseudo Code

```swift
class Node {
    var character: Character?
    var freq: Int
    var left: Node?
    var right: Node?
    
    init(character: Character? = nil, freq: Int, left: Node? = nil, right: Node? = nil) {
        self.character = character
        self.freq = freq
        self.left = left
        self.right = right
    }
}

func buildHuffmanTree(frequencies: [Character: Int]) -> Node? {
    let priorityQueue = frequencies.map { Node(character: $0.key, freq: $0.value) }.sorted(by: { $0.freq < $1.freq })
    
    while priorityQueue.count > 1 {
        let left = priorityQueue.removeFirst()
        let right = priorityQueue.removeFirst()
        
        let merged = Node(freq: left.freq + right.freq, left: left, right: right)
        priorityQueue.insert(merged, at: priorityQueue.firstIndex { $0.freq > merged.freq } ?? priorityQueue.endIndex)
    }
    
    return priorityQueue.first
}
