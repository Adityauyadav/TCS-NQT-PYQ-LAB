# The Unpaired Signal

## Problem Statement

A communication system transmits signals in pairs for redundancy — every signal ID is sent exactly **twice** to ensure reliable delivery. Due to a transmission fault, exactly **one** signal ID was sent only once and never paired.

Given the list of all received signal IDs, find the ID that was never paired.

---

## Input Format

The first line contains a single integer **N** — the total number of received signals. N is always odd.

The second line contains **N** space-separated integers — the received signal IDs.

```
N
s1 s2 s3 ... sN
```

---

## Output Format

Print a single integer — the signal ID that appears exactly once.

---

## Constraints

- 1 ≤ N ≤ 10^5 (N is always odd)
- -10^18 ≤ signal IDs ≤ 10^18
- Every signal ID appears exactly twice, except one which appears exactly once

---

## Sample Input

```
5
1 2 1 3 2
```

## Sample Output

```
3
```

---

## Sample Input 2

```
1
42
```

## Sample Output 2

```
42
```

---

## Sample Input 3

```
7
4 5 6 4 5 6 9
```

## Sample Output 3

```
9
```

---

## Explanation

- **Sample 1:** IDs 1 and 2 each appear twice. ID 3 appears only once — it is unpaired.
- **Sample 2:** Only one signal received — it is trivially unpaired.
- **Sample 3:** IDs 4, 5, 6 each appear twice. ID 9 appears only once.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the unpaired signal ID — no labels, no extra text.

---

## Notes

- Signal IDs can be very large — up to 10^18. Design your solution to handle this range correctly.
- The input is not sorted.
- A counting or summation based approach may not be reliable given the range of values. Think about a bitwise operation that cancels out pairs.