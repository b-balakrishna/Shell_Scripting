#!/bin/bash

echo "Break - to exit the loop"
echo "Continue - to skip to the next iteration of the loop"

# Example of using 'break' in a loop
echo "Example of break:"
for ((i=1; i<=5; i++))
do
    if [ $i -eq 3 ]; then
        echo "Breaking the loop at i = $i"
        break # Exit the loop when i equals 3
    fi
    echo "i = $i"
done

echo ""

# Example of using 'continue' in a loop
echo "Example of continue:"
for ((i=1; i<=5; i++))
do
    if [ $i -eq 3 ]; then
        echo "Skipping iteration at i = $i"
        continue # Skip the rest of the loop body when i equals 3
    fi
    echo "i = $i"
done
