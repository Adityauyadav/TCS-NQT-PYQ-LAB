# Inventory Lookup

## Problem Statement

A warehouse maintains a sorted inventory list of unique item codes. Due to a system migration, the list was rotated at an unknown pivot point — meaning the sequence was shifted by some number of positions, wrapping the end of the list back to the front.

For example, the original sorted list `[1, 2, 3, 4, 5, 6, 7]` might become `[4, 5, 6, 7, 1, 2, 3]` after rotation.

Given the rotated inventory list and a target item code, find the **index** of the target in the rotated list. If the item does not exist in the inventory, return **-1**.

All item codes are unique.

---

## Input Format

The first line contains a single integer **N** — the number of items in the inventory.

The second line contains **N** space-separated integers — the rotated inventory list.

The third line contains a single integer — the target item code to search for.

```
N
a1 a2 a3 ... aN
target
```

---

## Output Format

Print a single integer — the index (0-based) of the target in the list, or **-1** if not found.

---

## Constraints

- 1 ≤ N ≤ 10^5
- -10^4 ≤ item codes ≤ 10^4
- All item codes are unique
- The list is sorted in ascending order and rotated at some unknown pivot (rotation by 0 is also possible — the list may already be sorted)

---

## Sample Input

```
7
4 5 6 7 0 1 2
0
```

## Sample Output

```
4
```

---

## Sample Input 2

```
7
4 5 6 7 0 1 2
3
```

## Sample Output 2

```
-1
```

---

## Sample Input 3

```
1
1
1
```

## Sample Output 3

```
0
```

---

## Explanation

- **Sample 1:** The target `0` is at index 4 in the rotated list `[4, 5, 6, 7, 0, 1, 2]`.
- **Sample 2:** The target `3` does not exist in the list, so the answer is `-1`.
- **Sample 3:** Only one item in the inventory, and it matches the target — index is `0`.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the integer index or `-1` — no labels, no extra text.

---

## Notes

- The list may not be rotated at all — a fully sorted list is a valid input.
- A linear scan will produce correct results, but consider how your solution performs when N is very large.
- The rotation pivot is unknown and must not be assumed.