let's dive into the concept of trees in data structures, which is a crucial topic for interviews.

## What is a Tree?

A tree is a hierarchical data structure that simulates a tree structure with a set of linked nodes. It starts with a single node, known as the root, and branches out to additional nodes, which further branch into more nodes. Trees are non-linear data structures compared to arrays, linked lists, stacks, and queues.

## Basic Terminologies

- Node: An individual item or element in a tree.
- Root: The top node in a tree. There is only one root per tree, and from it branches out all other nodes.
- Parent Node: A node that has a branch leading to one or more nodes.
- Child Node: A node that is a descendant of a parent node.
- Leaf Node (or External node): A node that does not have any child nodes.
- Internal Node: A node that has at least one child.
- Sibling Nodes: Nodes that share the same parent.
- Edge: The connection between one node and another.
- Path: A sequence of nodes and edges connecting a node with a descendant.
- Level: The level of a node is defined by 1 + the number of connections between the node and the root.
- Height of a Node: The number of edges on the longest path from the node to a leaf.
- Height of the Tree: The height of the root node.
- Depth of a Node: The number of edges from the node to the tree's root node.

## Types of Trees 

- Binary Tree: Each node has at most two children (commonly referred to as the left and right child).

- Full/Strict Binary Tree: Either o or 2 children

- Almost Complete Binary Tree: In all levels for all sibling nodes, fill left node first then right, then only move to next level

- Complete Binary Tree: Exactly two children for all internal nodes, zero children for leaf nodes. No holes in the same level.
(Ref - https://www.youtube.com/watch?v=I_JuQ5ayPmc&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=31&pp=iAQB)

- Binary Search Tree (BST): A binary tree where each node has a comparable key (and an associated value) with the constraint that the key in any node is larger than the keys in all nodes in that node's left subtree and smaller than the keys in all nodes in that node's right subtree.

- AVL Tree: A **self-balancing binary search tree** where the difference between heights of left and right subtrees cannot be more than one for all nodes.
    - To covert AVL tree to balanced binary search tree, it requires left or right torations. Ideally
      RR / LL -> 1 rotation, RL / LR -> 2 rotation it needs to make the tree balanced & to maintain balance factor in between (-1, 0 , 1), Always to calculate from bottom & stop as soon as get first imbalance.

- Red-Black Tree: Another type of self-balancing binary search tree where each node contains an extra bit for denoting the color of the node, either red or black.

- B-Tree/B+ Tree: These are self-balancing tree data structures that maintain sorted data and allow searches, sequential access, insertions, and deletions in logarithmic time. They are commonly used in databases and filesystems.

- Heap: A special tree-based data structure that satisfies the heap property: if A is a parent node of B then the key of node A is ordered with respect to the key of node B with the same ordering applying across the heap.
    - Insertion
    - Deletion
    - HeapSort
    - Heapify
    - Array representation
    - Priority queue
 
    - Must follow 2 properties:
      1. Structure property - 
        - A tree must be ACBT 
        i.e. go to next level only after filling all nodes in previous level and 
        that is also from left to right order.
      2. Ordering property - 
        - Maxheap (root element is maximum node, parent > child at each level) or 
        - MinHeap (root element is minimum node, parent < child at each level)
      (Ref - https://www.youtube.com/watch?v=uuot9ItgTEI&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=32&pp=iAQB)

    - Construction of Heap Tree or Insertion
      1. Insert key one by one in given order 
        - Max heap based
        - Insert key in empty heap O(1) time
        - O(logn) because height of binary tree comparision + no of swapping in tree
        - Insert n items -> O(n logn) because height of binary tree comparision + no of swapping in tree for n items
        
      2. Heapify mthod - O(n)
        - Min heap based
        - Leaf nodes requires 0 swapping
        - For n keys, n/2 keys will be in leaf nodes
        - Inserting at leaf node O(1)
        - start from seecond last level , right most elelment -> start converting them according to min heap
        - Max swap for a node in level will be equal to no of levels (O(logn)) below the node while converting to min heap 
        - complexity (Ref - https://www.youtube.com/watch?v=8noP3YjjJCM&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=35)
        - Bottom up appraoch fro swaping

    - Deletion 
      - Can not delete any node directly, but internally after process can be deleted.
      - Can only delete root node O(logn) Worst case or lowest level right most element directly -> O(1) Best case
      - Top down approach for swaping
      (Ref - https://www.youtube.com/watch?v=4GsxDWMI7tQ&list=PLxCzCOWd7aiHcmS4i14bI0VrMbZTUvlTa&index=36&pp=iAQB)

    - Max height of binary tree will be log n

## Tree Traversal Methods

- In-Order (Left, Root, Right): Visit the left subtree, then the root, and finally the right subtree.
- Pre-Order (Root, Left, Right): Visit the root, then the left subtree, and finally the right subtree.
- Post-Order (Left, Right, Root): Visit the left subtree, then the right subtree, and finally the root.
- Level-Order: Visit the nodes level by level from left to right.

## Uses of Trees

- Managing hierarchical data.
- Making information easy to search (e.g., BST).
- Facilitating faster and more efficient sorting of information.
- For network routing algorithms.

Understanding these concepts will give you a solid foundation in tree data structures. Practicing problems based on these concepts is also highly recommended to prepare for interviews.
