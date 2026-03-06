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
# Each test case is exactly 2 lines: N, then the array

echo ""

exec 3< "$EXPECTED"

while IFS= read -r line_n && IFS= read -r line_arr; do
    total=$((total + 1))

    input_block="$line_n"$'\n'"$line_arr"

    IFS= read -r expected <&3

    actual=$(echo "$input_block" | $RUN 2>/dev/null)

    if [ "$actual" = "$expected" ]; then
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