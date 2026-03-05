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

# ── Parse and run test cases ──────────────
# Each test case starts with N on its own line,
# followed by N lines of input data.

echo ""

exec 3< "$EXPECTED"

while IFS= read -r first_line; do
    # first_line is N — number of items in this test case
    n="$first_line"
    input_block="$n"

    for (( i=0; i<n; i++ )); do
        IFS= read -r data_line
        input_block="$input_block"$'\n'"$data_line"
    done

    total=$((total + 1))

    # Read expected output (6 lines per test case)
    expected_block=""
    for (( i=0; i<6; i++ )); do
        IFS= read -r exp_line <&3
        if [ -z "$expected_block" ]; then
            expected_block="$exp_line"
        else
            expected_block="$expected_block"$'\n'"$exp_line"
        fi
    done

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