# Security Clearance

## Problem Statement

A government security system assigns clearance codes to personnel. A code is considered **secure** if it is a **prime number** — divisible only by 1 and itself. Codes that are not prime are flagged as **insecure**.

Given a clearance code, determine whether it is secure or not.

---

## Input Format

A single integer **N** — the clearance code.

```
N
```

---

## Output Format

Print `Prime` if the code is secure, or `Not Prime` if it is not.

---

## Constraints

- -10^6 ≤ N ≤ 10^6

---

## Sample Input

```
17
```

## Sample Output

```
Prime
```

---

## Sample Input 2

```
18
```

## Sample Output 2

```
Not Prime
```

---

## Sample Input 3

```
1
```

## Sample Output 3

```
Not Prime
```

---

## Explanation

- **Sample 1:** 17 is divisible only by 1 and 17 — it is prime.
- **Sample 2:** 18 is divisible by 2, 3, 6, 9 — it is not prime.
- **Sample 3:** 1 is not considered a prime number by definition.

---

## Instructions

- Read input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print exactly `Prime` or `Not Prime` — no labels, no extra text, no blank lines.

---

## Notes

- Numbers less than or equal to 1 are not prime.
- Negative numbers are not prime.
- 2 is the only even prime number.
- A brute force check up to N may be slow for large values — think about how far you actually need to check.