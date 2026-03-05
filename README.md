<div align="center">

# TCS NQT PYQ LAB

**A self-contained offline judge for TCS NQT coding round preparation with PYQs and Similar Questions**

[![License: Educational](https://img.shields.io/badge/License-Educational-blue.svg)](#license)
[![Languages](https://img.shields.io/badge/Languages-C%2B%2B%20%7C%20Python%20%7C%20Java-green.svg)](#supported-languages)
[![Contributions Welcome](https://img.shields.io/badge/Contributions-Welcome-orange.svg)](CONTRIBUTING.md)

</div>

---

## What Is This?

Most prep repositories hand you the answers of the PYQs. This one doesn't. This contains the matching question, and similar pattern problems to make you practice for the NQT while handling the typical **TCS NQT Compiler** thing which makes you handle your own inputs.

**TCS NQT PYQ Lab** is a structured, locally-runnable practice setup inspired by TCS NQT Previous Year Questions. The goal is to simulate the real experience of a coding assessment — read the problem, write your solution from scratch, make it take inputs, and verify it against hidden test cases.

No online judge. No account needed. Just your editor, your terminal, and the problem.

> _"The best way to prepare for a test is to simulate it."_

---

## Features

- **Full problem statements** — every problem includes a clean `problem.md`
- **Input taking practice** — you write the entire program including input parsing, mimicking the real NQT environment
- **Multiple test cases** — bundled inputs and expected outputs for every problem
- **One-command testing** — run `bash run.sh` to compile, execute, and validate your output
- **Test case score** — the script reports how many test cases passed out of the total
- **Multi-language support** — C++, Python, and Java supported out of the box
- **Auto-setup script** — `starter.sh` scaffolds blank solution files for your chosen language
- **No spoilers** — solution files are intentionally empty; the thinking is yours

---

## Repository Structure

```
tcs-nqt-pyq-lab/
│
├── README.md               ← You are here
├── starter.sh              ← Run this first to set up solution files
│
├── problem-name/
│   ├── problem.md          ← Full problem statement
│   ├── testcases.txt       ← Input file (one test case per line)
│   ├── expected_output.txt ← Correct outputs (one per line)
│   └── run.sh              ← Compile, run, and validate your solution
│
└── another-problem/
    ├── problem.md
    ├── testcases.txt
    ├── expected_output.txt
    └── run.sh
```

---

## Getting Started

### 1. Clone the Repository

```bash
git clone https://github.com/adityauyadav/tcs-nqt-pyq-lab.git
cd tcs-nqt-pyq-lab
```

### 2. Run the Setup Script

```bash
bash starter.sh
```

You'll be prompted to choose your language:

```
Select your preferred language:
1) C++
2) Python
3) Java
```

After selection, a blank solution file is created inside **every** problem directory:

| Language | File Created    |
|----------|-----------------|
| C++      | `solution.cpp`  |
| Python   | `solution.py`   |
| Java     | `Solution.java` |

These files are **intentionally empty** — write your own solution from scratch.

---

## Solving a Problem

Navigate into any problem directory:

```bash
cd problem-name
```

Open `problem.md` and read the problem statement carefully. Then open your solution file and implement it.

Your program should **read from standard input (stdin)** — just like a real judge.

---

## Running Your Solution

Once you've written your solution:

```bash
bash run.sh
```

The script will automatically:

1. Detect your solution file (`solution.cpp`, `solution.py`, or `Solution.java`)
2. Compile it (if required)
3. Feed each test case from `testcases.txt` into your program one by one
4. Compare your output against the corresponding line in `expected_output.txt`
5. Report the result for each test case and the final score

### Sample Output

**All tests pass:**
```
Test Case 1 : Passed
Test Case 2 : Passed
Test Case 3 : Passed

Result : 3/3
```

**Some tests fail:**
```
Test Case 1 : Passed
Test Case 2 : Failed
Test Case 3 : Passed

Result : 2/3
```

---

## Test Case Format

Each line in `testcases.txt` is one complete input, and the corresponding line in `expected_output.txt` is the expected answer.

```
testcases.txt        expected_output.txt
─────────────        ───────────────────
3 27                 3
2 16                 4
3 15                 -1
```

Your program is run once per line — read your input, compute, and print the answer.

---

## Supported Languages

| Language | Solution File   | Notes                                                |
|----------|-----------------|------------------------------------------------------|
| C++      | `solution.cpp`  | Compiled with `g++`                                  |
| Python   | `solution.py`   | Runs with `python3`                                  |
| Java     | `Solution.java` | Compiled with `javac`, class name must be `Solution` |

> **Note on TCS NQT compiler:** The actual TCS NQT environment can be restrictive. This repo is designed to get you comfortable with writing clean, self-contained programs that handle their own I/O.

---

## Why Does This Exist?

Seeing someone else's solution teaches you the answer.  
Writing your own teaches you to **think**.

This repo is built around the belief that placement preparation is most effective when it mirrors the actual test environment. Real assessments don't give you hints — they give you a problem, a blank editor, and a clock.

**The workflow this repo enforces:**

```
Read the problem → Write a solution → Run against test cases → Debug → Pass
```

This loop builds the skills that matter: input parsing, algorithm design, and output formatting.

---

## Contributing

Contributions are welcome. You can help by:

- Adding new TCS NQT-style problems
- Improving existing problem descriptions
- Adding more edge case test inputs
- Improving the `run.sh` or `starter.sh` scripts

### Adding a New Problem

Follow this structure exactly:

```
new-problem-name/
├── problem.md              ← Clear problem statement with constraints
├── testcases.txt           ← At least 3–5 varied test cases (one input per line)
├── expected_output.txt     ← Correct outputs (one per line, matching testcases.txt)
└── run.sh                  ← Copy and adapt from an existing problem
```

Then open a Pull Request — all contributions are reviewed and appreciated.

---

## License

This repository is intended for **educational and placement preparation purposes only**.

Problems are inspired by publicly discussed TCS NQT PYQs. No proprietary content is reproduced.

---

<div align="center">

Made for students, by students. Good luck on your NQT.

**All the best for your Exam**

</div>