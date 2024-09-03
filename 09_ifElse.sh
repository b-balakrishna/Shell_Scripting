#!/bin/bash

# Display a message indicating the start of the age classification section
echo "ElseIf"

# Prompt the user to enter their age
read -p "Enter your age: " age

# Check the age and classify it
if [ $age -lt 18 ]; then
    # If age is less than 18, classify as "Kid"
    echo "Kid"
elif [ $age -ge 18 -a $age -lt 50 ]; then 
    # If age is between 18 and 49 (inclusive), classify as "Adult"
    echo "Adult"
else
    # For age 50 and above, classify as "Old"
    echo "Old"
fi
