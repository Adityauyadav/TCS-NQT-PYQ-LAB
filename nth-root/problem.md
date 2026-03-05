# Nth Root of a Number

## Problem Statement

Given two integers **N** and **M**, find the **Nth root of M**.

The Nth root of M is defined as a positive integer **X** such that **X raised to the power N equals M** exactly.

If no such integer exists, print **-1**.

---

## Input Format

A single line containing two space-separated integers **N** and **M**.

```
N M
```

---

## Output Format

Print a single integer:
- **X**, if there exists a positive integer X such that X^N = M.
- **-1**, if no such integer exists.

---

## Constraints

- 1 ≤ N ≤ 30
- 1 ≤ M ≤ 10^9

---

## Sample Input

```
3 27
```

## Sample Output

```
3
```

---

## Explanation

3³ = 27, so the 3rd root of 27 is **3**.

---

## Instructions

- Read **N** and **M** from a single line on **standard input (stdin)**.
- Print only the integer answer — no labels, no extra text.

> Print this:
> ```
> 3
> ```
> Not this:
> ```
> The answer is: 3
> ```

---

## Notes

- Only consider **positive integer** roots. Fractional or negative roots are out of scope.
- M is not guaranteed to be a perfect Nth power. Handle that case by returning **-1**.
- Be mindful of **integer overflow** when computing large powers.