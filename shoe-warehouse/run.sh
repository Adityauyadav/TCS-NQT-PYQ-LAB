#!/bin/bash

# ─────────────────────────────────────────
#  TCS NQT — Practice Environment
#  run.sh : compile, run, and validate
# ─────────────────────────────────────────

TESTCASES="testcases.txt"
EXPECTED="expected_output.txt"

passed=0
failed=0
total=0

# ── Detect solution file ──────────────────

if [ -f "solution.cpp" ]; then
    g++ -o solution solution.cpp 2>&1
    if [ $? -ne 0 ]; then
        echo "Compilation failed."
        exit 1
    fi
    RUN="./solution"

elif [ -f "solution.py" ]; then
    RUN="python3 solution.py"

elif [ -f "Solution.java" ]; then
    javac Solution.java 2>&1
    if [ $? -ne 0 ]; then
        echo "Compilation failed."
        exit 1
    fi
    RUN="java Solution"

else
    echo "No solution file found."
    echo "Run bash starter.sh first to create your solution file."
    exit 1
fi

# ── Run test cases ────────────────────────
# Each input is 2 lines: N, then the shoes
# Each expected output is 2 lines: pairs, leftover

echo ""

exec 3< "$EXPECTED"

while IFS= read -r line_n && IFS= read -r line_shoes; do
    total=$((total + 1))

    input_block="$line_n"$'\n'"$line_shoes"

    IFS= read -r exp1 <&3
    IFS= read -r exp2 <&3
    expected_block="$exp1"$'\n'"$exp2"

    actual=$(echo "$input_block" | $RUN 2>/dev/null)

    if [ "$actual" = "$expected_block" ]; then
        passed=$((passed + 1))
        echo "Test Case $total : Passed"
    else
        failed=$((failed + 1))
        echo "Test Case $total : Failed"
    fi

done < "$TESTCASES"

exec 3<&-

# ── Print summary ─────────────────────────

echo ""
echo "Result : $passed/$total"
echo ""