# Shopping Bill Analyser

## Problem Statement

A store maintains a transaction log where each entry records the name of an item, the quantity purchased, and the price per unit. You are given **N** such transactions and are required to perform two independent analyses on the same data.

**Task 1 — Single Transaction Analysis:**
Find the item with the highest cost in a single transaction (quantity × price). Also compute the total bill and the average transaction cost across all N transactions.

**Task 2 — Cumulative Analysis:**
Find the item with the highest total cumulative cost across all its transactions (i.e., if the same item appears multiple times, their costs are summed). Also compute the total bill and the average transaction cost across all N transactions.

If two items have the same cost in either task, the one that appears first in the input takes priority.

---

## Input Format

The first line contains a single integer **N** — the number of transactions.

Each of the next N lines contains:
- A string **item** — the name of the item (no spaces)
- An integer **quantity** — units purchased
- An integer **price** — price per unit

```
N
item1 quantity1 price1
item2 quantity2 price2
...
```

---

## Output Format

Print exactly 6 lines:

```
<Task 1 max cost item>
<Task 1 total price>
<Task 1 average price>
<Task 2 max cumulative cost item>
<Task 2 total price>
<Task 2 average price>
```

- Total price and average price must be printed with **exactly 2 decimal places**.
- Average price = total bill / N (average cost per transaction).
- Do not print any labels, blank lines, or extra text.

---

## Constraints

- 1 ≤ N ≤ 1000
- 1 ≤ quantity ≤ 10000
- 1 ≤ price ≤ 100000
- Item names consist of alphanumeric characters only, no spaces

---

## Sample Input

```
3
Apple 2 50
Banana 5 20
Mango 1 150
```

## Sample Output

```
Mango
350.00
116.67
Mango
350.00
116.67
```

---

## Explanation

- Transaction costs: Apple = 100, Banana = 100, Mango = 150
- **Task 1:** Mango has the highest single transaction cost (150). Total = 350.00, Average = 350/3 = 116.67
- **Task 2:** All items appear once, so cumulative = single transaction. Mango still wins. Same output.

---

## Sample Input 2

```
4
Pen 10 5
Book 3 100
Pen 20 5
Book 2 100
```

## Sample Output 2

```
Book
650.00
162.50
Book
650.00
162.50
```

---

## Explanation 2

- Transaction costs: Pen=50, Book=300, Pen=100, Book=200
- **Task 1:** Book (first transaction, cost 300) is the highest single transaction.
- **Task 2:** Book cumulative = 300+200 = 500, Pen cumulative = 50+100 = 150. Book wins.

---

## Sample Input 3

```
3
Shoes 2 2000
Shirt 3 1500
Shoes 1 2000
```

## Sample Output 3

```
Shirt
10500.00
3500.00
Shoes
10500.00
3500.00
```

---

## Explanation 3

- Transaction costs: Shoes=4000, Shirt=4500, Shoes=2000
- **Task 1:** Shirt has the highest single transaction cost (4500).
- **Task 2:** Shoes cumulative = 4000+2000 = 6000, Shirt = 4500. Shoes wins.
- Note how Task 1 and Task 2 can produce different items — this is the key distinction.

---

## Instructions

- Read all input from **standard input (stdin)**.
- Print all output to **standard output (stdout)**.
- Print **exactly 6 lines** — no labels, no blank lines, no extra text.
- Total price and average must have **exactly 2 decimal places**.

---

## Notes

- Task 1 and Task 2 will often give different answers — design your solution to handle both independently from the same input data.
- Read all N transactions first, then process — do not read input twice.
- Watch out for floating point precision when computing averages.
- The total bill is the same for both tasks since both use the same N transactions.