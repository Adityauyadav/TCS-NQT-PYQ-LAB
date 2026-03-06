# Best Trade Window

## Problem Statement

A trader monitors the price of a commodity over **N** consecutive days. The trader can buy on any day and sell on a later day. The goal is to find the **maximum possible profit** — the largest difference between a selling price and a buying price, where the selling day must come **after** the buying day.

If no profitable trade is possible, print **-1**.

---

## Input Format

The first line contains a single integer **N** — the number of days.

The second line contains **N** space-separated integers — the price of the commodity on each day.

```
N
p1 p2 p3 ... pN
```

---

## Output Format

Print a single integer — the maximum profit possible, or **-1** if no profitable trade exists.

---

## Constraints

- 1 ≤ N ≤ 10^5
- -10^4 ≤ prices ≤ 10^4

---

## Sample Input

```
7
-3 -5 1 6 -7 8 11
```

## Sample Output

```
18
```

---

## Sample Input 2

```
5
5 4 3 2 1
```

## Sample Output 2

```
-1
```

---

## Sample Input 3

```
6
1 5 2 10 3 15
```

## Sample Output 3

```
14
```

---

## Explanation

- **Sample 1:** Buy at -7 (day 5) and sell at 11 (day 7). Profit = 11 - (-7) = **18**.
- **Sample 2:** Prices are strictly decreasing — no buy-sell pair gives a positive profit. Print **-1**.
- **Sample 3:** Buy at 1 (day 1) and sell at 15 (day 6). Profit = 15 - 1 = **14**.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the maximum profit or **-1** — no labels, no extra text.

---

## Notes

- The sell day must strictly come **after** the buy day — you cannot buy and sell on the same day.
- Prices can be negative.
- A profit of 0 (buy and sell at the same price) is not considered profitable — print **-1** in that case.
- A single element array has no valid trade — print **-1**.