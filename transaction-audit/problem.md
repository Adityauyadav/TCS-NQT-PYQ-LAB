# Transaction Audit

## Problem Statement

A financial auditor is reviewing a sequence of **N** transactions. Each transaction is represented as an integer — positive values indicate credits and negative values indicate debits.

The auditor needs to identify all **contiguous sequences of transactions** whose values sum to exactly a given **target** amount. These windows are suspicious and need to be flagged for review.

Print all such contiguous sequences in the order they appear, from left to right. If no such sequence exists, print **-1**.

---

## Input Format

The first line contains a single integer **N** — the number of transactions.

The second line contains **N** space-separated integers — the transaction values.

The third line contains a single integer **target** — the amount to search for.

```
N
t1 t2 t3 ... tN
target
```

---

## Output Format

Print each matching contiguous sequence on a separate line, space-separated, in left-to-right order of appearance.

If no sequence sums to the target, print **-1**.

---

## Constraints

- 1 ≤ N ≤ 1000
- -10^4 ≤ transaction values ≤ 10^4
- -10^6 ≤ target ≤ 10^6

---

## Sample Input

```
8
3 4 -7 1 3 3 1 -4
7
```

## Sample Output

```
3 4
3 4 -7 1 3 3
1 3 3
3 3 1
```

---

## Sample Input 2

```
4
1 2 3 4
11
```

## Sample Output 2

```
-1
```

---

## Sample Input 3

```
5
1 2 3 4 5
5
```

## Sample Output 3

```
2 3
5
```

---

## Explanation

- **Sample 1:** Four contiguous sequences sum to 7. They are printed in order of their starting position.
- **Sample 2:** No contiguous sequence sums to 11 (total sum is only 10). Print -1.
- **Sample 3:** `[2,3]` sums to 5, and `[5]` alone also sums to 5.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print each matching sequence on its own line, elements separated by a single space.
- If no match exists, print **-1**.
- Do not print any labels, blank lines, or trailing spaces.

---

## Notes

- Transaction values can be negative — a debit followed by a credit can still sum to the target.
- The same element cannot be reused — only contiguous subarrays count.
- Multiple sequences can match — print all of them.
- A single transaction that equals the target is a valid sequence.