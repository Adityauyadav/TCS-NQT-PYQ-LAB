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

# ── Parse test cases and expected outputs ─
# Both files use '---' as delimiter between test cases

echo ""

# Read all test cases into array
mapfile -t raw_input < "$TESTCASES"
mapfile -t raw_expected < "$EXPECTED"

input_block=""
expected_block=""

process_test() {
    total=$((total + 1))
    local input="$1"
    local expected="$2"

    # Strip trailing newline from expected
    expected="${expected%$'\n'}"

    actual=$(echo "$input" | $RUN 2>/dev/null)

    if [ "$actual" = "$expected" ]; then
        passed=$((passed + 1))
        echo "Test Case $total : Passed"
    else
        failed=$((failed + 1))
        echo "Test Case $total : Failed"
    fi
}

ei=0  # expected index
input_block=""
expected_block=""

for line in "${raw_input[@]}"; do
    if [ "$line" = "---" ]; then
        # consume expected block up to ---
        exp_lines=""
        while [ "${raw_expected[$ei]}" != "---" ]; do
            if [ -n "$exp_lines" ]; then
                exp_lines="$exp_lines"$'\n'"${raw_expected[$ei]}"
            else
                exp_lines="${raw_expected[$ei]}"
            fi
            ei=$((ei + 1))
        done
        ei=$((ei + 1))  # skip the ---

        process_test "$input_block" "$exp_lines"
        input_block=""
    else
        if [ -n "$input_block" ]; then
            input_block="$input_block"$'\n'"$line"
        else
            input_block="$line"
        fi
    fi
done

# ── Print summary ─────────────────────────

echo ""
echo "Result : $passed/$total"
echo ""