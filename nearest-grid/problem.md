# Nearest Grid Point

## Problem Statement

A city is built on a grid where streets are placed at every **Y** metres apart. Given a location coordinate **X**, find the grid street position closest to X.

In other words, find the multiple of Y that is nearest to X. If X is exactly halfway between two multiples, round to the farther one from zero.

---

## Input Format

Two space-separated integers **X** and **Y** on a single line.

```
X Y
```

---

## Output Format

Print a single integer — the nearest multiple of Y to X.

---

## Constraints

- -10^9 ≤ X ≤ 10^9
- 1 ≤ Y ≤ 10^9

---

## Sample Input

```
7 5
```

## Sample Output

```
5
```

---

## Sample Input 2

```
8 5
```

## Sample Output 2

```
10
```

---

## Sample Input 3

```
-8 5
```

## Sample Output 3

```
-10
```

---

## Explanation

- **Sample 1:** Multiples of 5 near 7 are 5 and 10. Distance to 5 is 2, distance to 10 is 3. Nearest is **5**.
- **Sample 2:** Multiples of 5 near 8 are 5 and 10. Distance to 5 is 3, distance to 10 is 2. Nearest is **10**.
- **Sample 3:** Multiples of 5 near -8 are -5 and -10. Distance to -5 is 3, distance to -10 is 2. Nearest is **-10**.

---

## Instructions

- Read input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print only the nearest multiple — no labels, no extra text.

---

## Notes

- X can be negative — handle both directions correctly.
- If X is exactly halfway between two multiples (e.g. X=5, Y=10), round away from zero.
- X = 0 always maps to 0.
- X may already be a multiple of Y — in that case, the answer is X itself.