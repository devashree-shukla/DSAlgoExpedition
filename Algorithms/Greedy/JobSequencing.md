The Job Sequencing Problem is a classic example of a greedy algorithm in operation, focusing on maximizing profit by completing jobs within their deadlines. Given a set of jobs with deadlines and profits, the goal is to schedule jobs in a way that maximizes total profit while ensuring each job is completed within its deadline. This problem assumes each job takes a single unit of time to complete.

## Key Concepts

- Jobs: Each job has an associated profit and deadline.

- Deadlines: Each job must be completed by its deadline to earn the profit.

- Profit Maximization: The objective is to sequence the jobs to maximize total profit.

## Problem Statement

Given n jobs where each job is represented by a deadline and profit, schedule the jobs to maximize total profit if only one job can be scheduled at a time.

## Approach

- Sort Jobs by Profit: Sort the jobs in descending order of profit.

- Find Max Deadline: Determine the maximum deadline to set the size of the job sequence.

- Initialize Job Sequence: Create an array to store the scheduled jobs, initialized to indicate no job is scheduled at the start.

## Schedule Jobs:

- For each job in the sorted list, starting from the highest profit:
    - Find a slot from the job's deadline to the start where the job can be scheduled.
    - If a slot is found, schedule the job.

## Pesudo code

Step 1: Arrange all jobs in decreasing order of profit...................O(n log n)

Step 2: for each job m[i]................................................O(m n) / O(n^2 if m = n)
            do linear search to find perticular slot in array of size n, 
            where n = maximum deadline, m = total jobs

Overall complexity is O(n^2)


## Complexity Analysis

### Time Complexity: 

O(n^2), where n is the number of jobs. The primary consumption of time is in the nested loop where we try to find a free slot for each job.

### Space Complexity: 

O(n), for storing the job sequence and the time slots.

## Example

Consider jobs [A, B, C, D] with deadlines [2, 1, 2, 1] and profits [100, 19, 27, 25]. The optimal job sequence that maximizes profit is [C, A] resulting in a total profit of 127.

