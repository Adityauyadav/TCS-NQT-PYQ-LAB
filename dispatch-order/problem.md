# Dispatch Order

## Problem Statement

A logistics company receives a list of package weights each morning. Before dispatching, the packages must be arranged in **non-decreasing order of weight** so that the lightest packages are loaded first.

Given the list of package weights, output the weights in sorted order.

---

## Input Format

The first line contains a single integer **N** — the number of packages.

The second line contains **N** space-separated integers — the weight of each package.

```
N
w1 w2 w3 ... wN
```

---

## Output Format

Print the **N** weights in non-decreasing order on a single line, separated by a single space. No trailing space.

---

## Constraints

- 1 ≤ N ≤ 10^5
- -10^4 ≤ weights ≤ 10^4

---

## Sample Input

```
5
3 1 4 1 5
```

## Sample Output

```
1 1 3 4 5
```

---

## Sample Input 2

```
6
5 4 3 2 1 0
```

## Sample Output 2

```
0 1 2 3 4 5
```

---

## Sample Input 3

```
1
42
```

## Sample Output 3

```
42
```

---

## Explanation

- **Sample 1:** The weights rearranged in ascending order give `1 1 3 4 5`.
- **Sample 2:** A fully reversed list sorted gives `0 1 2 3 4 5`.
- **Sample 3:** A single package is already sorted.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print exactly **N** space-separated integers on a single line.
- Do **not** print a trailing space after the last element.
- Do **not** print any labels or extra text.

---

## Notes

- Weights can be negative — do not assume all values are positive.
- Duplicate weights are allowed and must all appear in the output.
- A simple O(N²) approach will produce correct results but may struggle as N grows large. Think about how to sort more efficiently by breaking the problem into smaller subproblems.