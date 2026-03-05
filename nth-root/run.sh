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

echo ""

while IFS= read -r input && IFS= read -r expected <&3; do
    total=$((total + 1))

    actual=$(echo "$input" | $RUN 2>/dev/null)

    if [ "$actual" = "$expected" ]; then
        passed=$((passed + 1))
        echo "Test Case $total : Passed"
    else
        failed=$((failed + 1))
        echo "Test Case $total : Failed"
    fi

done < "$TESTCASES" 3< "$EXPECTED"

# ── Print summary ─────────────────────────

echo ""
echo "Result : $passed/$total"
echo ""