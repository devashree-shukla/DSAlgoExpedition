It devides the problem into series of overlapping subproblems such that 
1. Optimal sbstrcutres (Min / Max)
2. Overlapping subproblems (Reusable sub problem result)

- DP always provides optimal answer where greedy may or may not provide optimal answer. Because greedy approach start with first optimal option only , DP checks all possible options and finds optimal answers.

## Knapsack 

0/1 knapsack (0 absent, 1 present use this to fill a bucket or bag)

### Recurrence relation :

n = no of elements

m = knapsack bag size capacity

Fo element n, Pn is Profit, Wn is Weight 

0/1 knapsack(n, m) = Max(01KS(n-1), (m - Wn) + Pn //Consider the element, 

                     01KS(n - 1), m //Don't consider the element)

                     01KS(n - 1, m) if Wn > m

                     0 if n is 0 or m = 0 

 ### Recurrence tree :

<img src="https://github.com/devashree-shukla/DSAlgoExpedition/assets/38584944/131b42e7-e1c4-4a66-bb46-f65f28c07d06" width=350>


|  | 0/1 Knapsack | Fractional Knapsack |
| --- | --- | --- |
| Items | Each item can only be included once (0 or 1) | Each item can be included multiple times in fractional amounts |
| Objective | Maximize the total value of the items included | Maximize the total value per unit weight of the items included |
| Solution Approach | Dynamic Programming | Greedy Algorithm |
| Example | Given a set of items with weights and values, find the subset of items to include in the knapsack such that the total weight does not exceed a given limit and the total value is maximized | Given a set of items with weights and values, find the subset of items to include in the knapsack such that the total weight does not exceed a given limit and the total value per unit weight is maximized |
| Pseudocode |  |  |
|  | create a value matrix V[W+1][n+1] | sort the items in descending order based on their P i/W i values |
|  | for w=0 to W do V[w] = 0 | without exceeding the limit, add the items into the knapsack |
|  | for i=1 to n do | if the knapsack can still store some weight, add the next item |
|  | if w >= w[i] then | if the knapsack can't store the entire item, add a fraction of it |
|  | V[w][i] = max(V[w][i-1], v[i] + V[w-w[i]][i-1]) |  |
|  | else V[w][i] = V[w][i-1] |  |
|  | return V[W][n] |  |
| Time Complexity | O(nW) | O(n log n) |
| Space Complexity | O(nW) | O(n) |
| Applications | Resource allocation, capacity planning, scripting and automation tasks | Cutting raw materials without losing too much material, picking through investments and portfolios, generating keys for the Merkle-Hellman algorithm, cognitive radio networks, power allocation |
| References | [1], [4] | [2], [3] |