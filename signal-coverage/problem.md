# Signal Coverage

## Problem Statement

A network engineer is analysing signal transmission across a series of **N** relay stations. Each station has a signal strength represented as an integer. When a group of consecutive stations transmit together, their combined signal strength is computed using the **bitwise OR** of their individual strengths.

Given the signal strengths of N consecutive relay stations, find the number of **distinct combined signal strengths** that can be produced by any group of one or more consecutive stations.

---

## Input Format

The first line contains a single integer **N** — the number of relay stations.

The second line contains **N** space-separated integers — the signal strength of each station.

```
N
s1 s2 s3 ... sN
```

---

## Output Format

Print a single integer — the number of distinct values that can be produced by taking the bitwise OR of any contiguous subarray.

---

## Constraints

- 1 ≤ N ≤ 5 × 10^4
- -10^9 ≤ signal strengths ≤ 10^9

---

## Sample Input

```
3
1 2 4
```

## Sample Output

```
6
```

---

## Sample Input 2

```
1
0
```

## Sample Output 2

```
1
```

---

## Sample Input 3

```
2
1 1
```

## Sample Output 3

```
1
```

---

## Explanation

- **Sample 1:** All contiguous subarrays and their OR values:
  - [1] = 1
  - [2] = 2
  - [4] = 4
  - [1,2] = 1|2 = 3
  - [2,4] = 2|4 = 6
  - [1,2,4] = 1|2|4 = 7

  Distinct values: {1, 2, 3, 4, 6, 7} → **6**

- **Sample 2:** Only one subarray [0] → **1** distinct value.

- **Sample 3:** All subarrays ([1], [1], [1,1]) produce the same value 1 → **1** distinct value.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the count — no labels, no extra text.

---

## Notes

- Signal strengths can be negative — bitwise OR on negative integers follows two's complement rules.
- The same OR value produced by different subarrays is counted only once.
- A single station is a valid group of consecutive stations.
- Brute force O(N²) enumeration of all subarrays is a valid starting point, but think about whether repeated OR computations can be avoided.