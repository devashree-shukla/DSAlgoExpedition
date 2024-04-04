A Trie, often pronounced as "try" or "tree", is a specialized tree-like data structure that differs from binary search trees (BSTs) in that its position within the tree defines the key it is associated with. It's most commonly used for storing strings in a way that makes searching extremely efficient, particularly for tasks like autocomplete, spell checking, and prefix searching. Here's a quick overview of the key aspects of Tries:

## Basic Concept

- Structure: 

A Trie is a tree where each node represents a single character of a key or string. The root node represents an empty string, and paths from the root to a leaf or a node with a non-empty value field correspond to keys.

- Keys: 

Unlike in a binary search tree where each node contains an entire key, in a Trie, one key is typically spread out across several nodes, with the path from the root to a particular node forming the key.

- Termination: 

Nodes in a Trie may contain a special field to indicate the end of a key, allowing keys to be prefixes of longer keys.

## Advantages of Tries

- Efficiency: 

Searching for a key of length M takes O(M) time, making it extremely efficient for lookup operations, especially when dealing with a large dataset.

- Prefix Searching: 

Tries are particularly useful for prefix searching, which is finding keys that share a common prefix, an operation that can be performed quickly.

- Autocomplete: 

Due to their efficient prefix searching capabilities, Tries are often used to implement autocomplete systems.

## Implementation Details

- Nodes: Each node typically contains an array or a map of child nodes, representing the possible next characters in keys. It might also contain a boolean or a value field to indicate if a node corresponds to the end of a key.

- Insertion: To insert a key, you start from the root and traverse down the Trie, creating new nodes for characters as needed. When you reach the end of the key, you mark the current node as an endpoint.

- Search: To search for a key, you traverse the Trie from the root, following the path defined by the key's characters. If you can follow the path for the entire key and reach a node marked as an endpoint, the key exists in the Trie.

- Deletion: Deletion is more complex than insertion or search. It involves removing the key node by node from the end of the key towards the root, making sure not to remove nodes that are part of other keys.

## Complexity

- Space: A Trie can be space-inefficient when storing a large number of keys that do not share common prefixes, as it requires storing every character separately. However, for datasets with many common prefixes, it can be very space-efficient.

- Time: The time complexity for inserting, searching, and deleting keys in a Trie is O(M), where M is the length of the key. This performance is generally not affected by the number of keys stored in the Trie.

Tries are a powerful tool in scenarios where quick search, insert, and delete operations are needed, especially when dealing with strings. Their ability to quickly handle prefix-based queries makes them indispensable for text-based applications like dictionaries, search engines, and text auto-completion features.

## Key Points:

- TrieNode: Represents each node in the Trie. It has a dictionary of children nodes and a boolean flag to mark the end of a word.

- Insert: Adds a word to the Trie. It iterates through each character of the word, creating new nodes as necessary, and sets isEndOfWord to true at the last character.

- Search: Checks if a word is in the Trie. It traverses the Trie based on the word's characters. If it can successfully navigate to the last character and isEndOfWord is true, the word exists in the Trie.

- StartsWith: Similar to search, but it only checks if the Trie contains a given prefix, not needing to check the isEndOfWord flag at the end.

This code provides a solid foundation for understanding and working with Tries in Swift. It's a good starting point for more complex problems and optimizations you might face during interviews or while developing applications.

Ref - https://www.youtube.com/watch?v=soJgGe1CQHw