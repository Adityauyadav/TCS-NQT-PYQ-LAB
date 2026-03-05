#!/bin/bash

# Starter script for creating solution files in each problem directory

echo "Select your programming language:"
echo "1) C++"
echo "2) Python"
echo "3) Java"
echo -n "Enter the option number : "
read choice

case $choice in
  1)
    filename="solution.cpp"
    ;;
  2)
    filename="solution.py"
    ;;
  3)
    filename="Solution.java"
    ;;
  *)
    echo "Invalid option. Please run the script again."
    exit 1
    ;;
esac

echo ""
echo "Creating solution files..."

created=0
skipped=0

# Loop through all directories in repo
for dir in */ ; do

    # Skip non-problem directories
    if [ -f "$dir/problem.md" ]; then

        filepath="${dir}${filename}"

        if [ ! -f "$filepath" ]; then
            touch "$filepath"
            echo "Created: $filepath"
            ((created++))
        else
            echo "Already exists: $filepath"
            ((skipped++))
        fi

    fi

done

echo ""
echo "Created : $created file(s)"
echo "Skipped : $skipped file(s)"
echo ""
echo "Setup complete. You can now open any problem folder and start coding."