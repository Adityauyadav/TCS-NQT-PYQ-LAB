# The Hailstone Sequence

## Problem Statement

A peculiar number sequence is defined as follows. Starting from any positive integer **K**:

- If K is **even**, the next number is K / 2
- If K is **odd**, the next number is 3 × K + 1

This process repeats until the sequence reaches **1**.

It is believed that no matter what positive integer you start with, the sequence will always eventually reach 1 — though this has never been formally proven.

Given a positive integer **N**, perform the following three tasks:

**Task 1:** Generate the full sequence starting from N until it reaches 1.

**Task 2:** Among all sequences starting from integers 1 to N, find the one with the **greatest length**. Print the length and the starting value. If multiple starting values produce sequences of the same length, the **larger** starting value takes priority.

**Task 3:** Among all sequences starting from integers 1 to N, find the one that reaches the **highest peak value**. Print the peak value and the starting value. If multiple starting values reach the same peak, the **larger** starting value takes priority.

---

## Input Format

A single positive integer **N**.

```
N
```

---

## Output Format

Print exactly 3 lines:

```
Line 1 — Task 1: space-separated integers of the full sequence starting from N
Line 2 — Task 2: <longest_length> <starting_value>
Line 3 — Task 3: <highest_peak> <starting_value>
```

---

## Constraints

- 1 ≤ N ≤ 200

---

## Sample Input

```
7
```

## Sample Output

```
7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1
17 7
52 7
```

---

## Sample Input 2

```
1
```

## Sample Output 2

```
1
1 1
1 1
```

---

## Sample Input 3

```
10
```

## Sample Output 3

```
10 5 16 8 4 2 1
20 9
52 9
```

---

## Explanation

- **Sample 1 Task 1:** Starting from 7, the sequence is 7 → 22 → 11 → 34 → 17 → 52 → 26 → 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1 (17 steps).
- **Sample 1 Task 2:** Among sequences starting from 1 to 7, the sequence from 7 is the longest with 17 steps.
- **Sample 1 Task 3:** Among sequences starting from 1 to 7, the sequence from 7 reaches the highest peak of 52.
- **Sample 3 Task 2:** Among 1 to 10, the sequence from 9 has length 20 — longer than 7's length of 17.
- **Sample 3 Task 3:** Both 7 and 9 reach a peak of 52. Since 9 > 7, starting value 9 wins.

---

## Instructions

- Read input from **standard input (stdin)**.
- Print exactly 3 lines to **standard output (stdout)**.
- Do not print any labels, brackets, or extra text.

---

## Notes

- The sequence always ends at 1 — include 1 in the output.
- The peak of a sequence includes the starting value itself.
- For N = 1, all three tasks involve only the trivial sequence [1].
- Sequences can grow very large before converging — intermediate values may exceed N significantly.