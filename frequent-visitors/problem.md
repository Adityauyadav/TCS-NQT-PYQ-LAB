# Frequent Visitors

## Problem Statement

A theme park records the zone number visited by each guest throughout the day. At the end of the day, the management wants to identify all zones that were visited **frequently** — defined as zones visited by at least **N/3** guests, where N is the total number of recorded visits and `/` denotes integer division.

Given the list of zone visits, find all such frequently visited zones. If no zone qualifies, print **-1**.

---

## Input Format

The first line contains a single integer **N** — the total number of recorded visits.

The second line contains **N** space-separated integers — the zone number of each visit.

```
N
z1 z2 z3 ... zN
```

---

## Output Format

Print all frequently visited zone numbers on a single line in **ascending order**, separated by a single space.

If no zone qualifies, print **-1**.

---

## Constraints

- 1 ≤ N ≤ 10^5
- -10^4 ≤ zone numbers ≤ 10^4

---

## Sample Input

```
7
3 3 4 2 4 4 2
```

## Sample Output

```
2 3 4
```

---

## Explanation

N = 7, so the threshold is 7/3 = 2. Zones visited at least 2 times qualify.

- Zone 2: visited 2 times → qualifies
- Zone 3: visited 2 times → qualifies
- Zone 4: visited 3 times → qualifies

Output in ascending order: `2 3 4`

---

## Sample Input 2

```
6
1 2 2 3 3 3
```

## Sample Output 2

```
2 3
```

---

## Explanation 2

N = 6, threshold = 6/3 = 2.

- Zone 1: visited 1 time → does not qualify
- Zone 2: visited 2 times → qualifies
- Zone 3: visited 3 times → qualifies

---

## Sample Input 3

```
8
1 2 3 4 5 6 7 8
```

## Sample Output 3

```
-1
```

---

## Explanation 3

N = 8, threshold = 8/3 = 2. Every zone is visited exactly once — no zone qualifies. Print -1.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print qualifying zones in **ascending order** on a single line, space-separated.
- If no zone qualifies, print **-1**.
- Do not print any labels, trailing spaces, or extra text.

---

## Notes

- The threshold uses **integer division** — for N = 7, the threshold is 2 (not 2.33).
- Zone numbers can be negative.
- Multiple zones can qualify simultaneously.
- A single element array always qualifies since 1 >= 1/3 = 0.