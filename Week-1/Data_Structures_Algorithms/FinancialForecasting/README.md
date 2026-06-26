# Financial Forecasting

## Recursive Algorithms
Recursion is a programming technique in which a method calls itself to solve a smaller version of the same problem. It continues until a base case is reached, which stops further recursive calls.
### How does it simplify certain problems?:
-Simple and readable code.

-Useful for problems that can be divided into smaller subproblems.

-Commonly used in tree traversal, searching, sorting, and mathematical calculations.

---

## Time Complexity
There is one recursive call for each year.
If there are n years:

 -T(n) = T(n−1) + O(1)

-Time Complexity: O(n)

-Space Complexity: O(n)

because each recursive call is stored in the call stack until the base case is reached.

---

## Optimisation
The recursive solution creates a new stack frame for every call.

It can be optimized by using:

-Iteration (Loop): Avoids recursive call overhead and uses constant extra space.

-Memoization: Stores results of previous recursive calls to avoid recomputation. This is especially useful when recursion solves overlapping subproblems (although this particular forecasting example does not have overlapping subproblems).

Using an iterative approach would reduce the space complexity from O(n) to O(1).
