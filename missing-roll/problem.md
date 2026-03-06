# The Missing Roll Number

## Problem Statement

A teacher maintains an attendance register for a class of **N+1** students, each assigned a unique roll number from **1 to N+1**. During a data entry error, exactly one student's roll number was lost from the register.

You are given the **N** roll numbers that were successfully recorded. Find the one roll number that is missing.

---

## Input Format

The first line contains a single integer **N** — the number of recorded roll numbers.

The second line contains **N** space-separated integers — the recorded roll numbers.

```
N
r1 r2 r3 ... rN
```

---

## Output Format

Print a single integer — the missing roll number.

---

## Constraints

- 1 ≤ N ≤ 10^5
- The recorded numbers are a subset of {1, 2, ..., N+1} with exactly one number missing
- All recorded numbers are distinct

---

## Sample Input

```
4
1 2 3 5
```

## Sample Output

```
4
```

---

## Sample Input 2

```
4
2 3 4 5
```

## Sample Output 2

```
1
```

---

## Sample Input 3

```
4
1 2 3 4
```

## Sample Output 3

```
5
```

---

## Explanation

- **Sample 1:** Roll numbers should be 1 to 5. Number 4 is missing.
- **Sample 2:** Roll numbers should be 1 to 5. Number 1 is missing.
- **Sample 3:** Roll numbers should be 1 to 5. Number 5 is missing.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the missing roll number — no labels, no extra text.

---

## Notes

- The input is not necessarily sorted.
- The missing number could be anywhere in the range — beginning, middle, or end.
- Think about what you know about the complete set of numbers before any were lost.