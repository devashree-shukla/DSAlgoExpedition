Queue is a linear data structure that follows a particular order in which operations are performed. The order is First In First Out (FIFO). This means the first element added to the queue will be the first one to be removed. It's a collection designed for holding elements prior to processing. A queue is an abstract data type or a linear data structure, where the first element is inserted from one end called the REAR (also called tail), and the removal of existing elements takes place from the other end called FRONT (also called head).

## Basic Operations

Queue operations may include:

- Enqueue: Adds an item to the end of the queue.
- Dequeue: Removes the item from the front of the queue.
- Front: Gets the front item from the queue without removing it.
- Rear: Gets the last item from the queue without removing it.
- IsEmpty: Checks if the queue is empty.
- IsFull: Checks if the queue is full (relevant for a fixed-size queue).

# Types of Queues

- Simple Queue: Follows the FIFO method.
- Circular Queue: A more efficient queue that connects the rear back to the front, reducing the amount of shifting required.
- Priority Queue: Elements are added based on their priority. Instead of being FIFO, elements are removed from the queue based on priority.
- Double-Ended Queue (Deque): Allows insertions and deletions from both the front and the rear.

## Implementation

Queues can be implemented using different data structures, like arrays, linked lists, or even stacks for certain types of queues (e.g., a double-ended queue).

## When to Use a Queue

- Managing tasks in a certain order, where the first task added is the first to be completed.
- Handling asynchronous data transfer between different parts of a system (e.g., IO Buffers).
- Implementing breadth-first search (BFS) algorithms in graph structures.

Understanding these basics, along with practicing implementing and using queues in different scenarios, will be very beneficial for your interview preparation.

## Important Notes for Interviews:

- Generic Type <T>: The use of generics makes this queue implementation flexible, allowing it to store any type of element.
- Private Elements Array: The elements are stored in a private array to encapsulate the queue's implementation details.
- Mutating Methods: Since the structure is value-type, methods modifying the contents are marked with mutating.
- Optional Return Types: The dequeue, front, and rear methods return optional values to handle cases where the queue might be empty.

Feel free to use this code snippet in your GitHub repo for future reference and modify it as needed to fit more specific requirements or to extend its functionality for your interview preparation.