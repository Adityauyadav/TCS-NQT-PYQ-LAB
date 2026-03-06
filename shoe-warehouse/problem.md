# Shoe Warehouse

## Problem Statement

A shoe warehouse receives a shipment of individual shoes. Each shoe is labelled with its size and side — for example `9L` means size 9 left shoe, and `10R` means size 10 right shoe.

A valid pair consists of one left shoe and one right shoe of the **same size**.

Given the list of all shoes in the shipment, find:
1. The total number of complete pairs that can be formed.
2. The number of shoes left over that could not be paired.

---

## Input Format

The first line contains a single integer **N** — the total number of shoes.

The second line contains **N** space-separated strings — each string is a shoe label in the format `<size><side>` where size is a positive integer and side is either `L` or `R`.

```
N
shoe1 shoe2 shoe3 ... shoeN
```

---

## Output Format

Print exactly two lines:
- Line 1: total number of complete pairs
- Line 2: number of unmatched leftover shoes

---

## Constraints

- 1 ≤ N ≤ 10^5
- 1 ≤ shoe size ≤ 100
- Each shoe label is a positive integer followed by `L` or `R`

---

## Sample Input

```
6
9L 9R 10L 10R 11L 11R
```

## Sample Output

```
3
0
```

---

## Sample Input 2

```
5
9L 9R 10L 10R 11L
```

## Sample Output 2

```
2
1
```

---

## Sample Input 3

```
4
9L 9L 9R 10L
```

## Sample Output 3

```
1
2
```

---

## Explanation

- **Sample 1:** All 6 shoes form 3 complete pairs. No leftovers.
- **Sample 2:** `9L+9R` and `10L+10R` form 2 pairs. `11L` has no match — 1 leftover.
- **Sample 3:** One `9L` pairs with `9R` — 1 pair. The second `9L` and `10L` have no matches — 2 leftovers.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print exactly 2 lines to **standard output (stdout)**.
- Do not print any labels or extra text.

---

## Notes

- Multiple shoes of the same label can exist — e.g. three `9L` shoes and two `9R` shoes yield 2 pairs and 1 leftover.
- The input is not sorted.
- Total shoes = (pairs × 2) + leftovers always holds.