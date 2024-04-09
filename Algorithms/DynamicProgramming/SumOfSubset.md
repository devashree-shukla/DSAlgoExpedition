- sum of subset of elements 

S = (10, 20, 30, 40)
m = 50

SOS(n, m) = SOS(n - 1, m) if to not consider n
            OR
            SOS(n - 1, m - Wn) if to consider n
            OR
            SOS(n - 1, m) if Wn > m (to not consider)
            OR
            True , n = 0, m = 0
            False, n == 0, m != 0
            True, n != 0, m = 0

Time complexity = O(2^n)
can be reduced to O(n m) by storing duplicated items in the recurrence tree
This works if m is smaller
If m is larger, time complexity will be exponential