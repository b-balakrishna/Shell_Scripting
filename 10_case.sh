#!/bin/bash

echo "Switch Case"

# Prompt the user to enter a grade
read -p "Enter Grade: " grade

# Start a case statement to check the value of the entered grade
case $grade in
    # If grade is 'A', output the corresponding marks range
    A)
        echo "Marks between 90-100"
        ;;
    # If grade is 'B', output the corresponding marks range
    B)
        echo "Marks between 80-89"
        ;;
    # If grade is 'C', output the corresponding marks range
    C)
        echo "Marks between 70-79"
        ;;
    # For any other grade, output a message indicating marks below 70
    *)
        echo "Marks below 70"
        ;;
esac
