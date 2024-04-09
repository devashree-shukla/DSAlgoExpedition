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



