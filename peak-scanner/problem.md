# Peak Scanner

## Problem Statement

A quality control system monitors a production line by scanning a sequence of **N** sensor readings. The scanner has a fixed inspection frame of size **K** — at each step, it examines exactly **K** consecutive readings and records the highest value detected within that frame.

The frame starts at the beginning of the sequence and shifts one position to the right after each recording, until it reaches the end of the sequence.

Given the sensor readings and the frame size, print all recorded peak values in order.

---

## Input Format

The first line contains a single integer **N** — the number of sensor readings.

The second line contains **N** space-separated integers — the sensor readings.

The third line contains a single integer **K** — the size of the inspection frame.

```
N
a1 a2 a3 ... aN
K
```

---

## Output Format

Print all recorded peak values on a single line, separated by a single space. No trailing space.

---

## Constraints

- 1 ≤ K ≤ N ≤ 10^6
- -10^5 ≤ sensor readings ≤ 10^5

---

## Sample Input

```
8
1 3 -1 -3 5 3 6 7
3
```

## Sample Output

```
3 3 5 5 6 7
```

---

## Explanation

The frame of size 3 moves across the sequence one step at a time, recording the highest value at each position:

- Frame covers positions 1–3 → readings: 1, 3, -1 → peak: **3**
- Frame covers positions 2–4 → readings: 3, -1, -3 → peak: **3**
- Frame covers positions 3–5 → readings: -1, -3, 5 → peak: **5**
- Frame covers positions 4–6 → readings: -3, 5, 3 → peak: **5**
- Frame covers positions 5–7 → readings: 5, 3, 6 → peak: **6**
- Frame covers positions 6–8 → readings: 3, 6, 7 → peak: **7**

A total of N - K + 1 = 6 peaks are recorded.

---

## Sample Input 2

```
5
1 2 3 4 5
1
```

## Sample Output 2

```
1 2 3 4 5
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
5
```

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print output to **standard output (stdout)**.
- Print exactly **N - K + 1** space-separated integers on a single line.
- Do **not** print a trailing space after the last element.
- Do **not** print any labels or extra text.

---

## Notes

- Sensor readings can be negative — do not assume all values are positive.
- When K = 1, every reading is its own peak.
- When K = N, only one peak is recorded — the highest reading in the entire sequence.
- Consider how your solution performs as N grows very large.