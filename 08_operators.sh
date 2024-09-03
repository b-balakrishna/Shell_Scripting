#!/bin/bash

# Display a message indicating the start of operators section
echo "Operators"

# Arithmetic Operators
echo "Arithmetic Operators"

# Prompt the user to enter two numbers
read -p "Enter n1: " n1
read -p "Enter n2: " n2

# Perform arithmetic operations and display the results
echo "Addition: $((n1 + n2))" # Example: If n1=5 and n2=3, output will be 8
echo "Subtraction: $((n1 - n2))" # Example: If n1=5 and n2=3, output will be 2
echo "Multiplication: $((n1 * n2))" # Example: If n1=5 and n2=3, output will be 15
echo "Division: $((n1 / n2))" # Example: If n1=6 and n2=3, output will be 2
echo "Modulus: $((n1 % n2))" # Example: If n1=5 and n2=3, output will be 2

# Increment and Decrement
echo "Increment and Decrement"

# Pre-increment (Increment n1 by 1 before using it)
echo "Pre Increment: $((++n1))" # Example: If n1 was 5, it becomes 6, output will be 6

# Post-increment (Use n1, then increment it)
echo "Post Increment: $((n1++))" # Example: If n1 is now 6, output will be 6, and n1 becomes 7
echo "New value of n1: $n1" # Display the new value of n1

# Pre-decrement (Decrement n2 by 1 before using it)
echo "Pre Decrement: $((--n2))" # Example: If n2 was 4, it becomes 3, output will be 3

# Post-decrement (Use n2, then decrement it)
echo "Post Decrement: $((n2--))" # Example: If n2 is now 3, output will be 3, and n2 becomes 2
echo "New value of n2: $n2" # Display the new value of n2

# Relational Operators
echo "Relational Operators"

# Prompt the user for two numbers to compare
read -p "Enter a number for comparison (n1): " n1
read -p "Enter another number for comparison (n2): " n2

# Using relational operators to compare values
# -gt Greater Than
if [ $n1 -gt $n2 ]
 then
    echo "$n1 is greater than $n2" # Example: If n1=7 and n2=3, output will be "7 is greater than 3"
fi

# -lt Less Than
if [ $n1 -lt $n2 ]; then
    echo "$n1 is less than $n2" # Example: If n1=3 and n2=7, output will be "3 is less than 7"
else
    echo "$n1 is not less than $n2" # Example: If n1=7 and n2=3, output will be "7 is not less than 3"
fi

# -ge Greater Than or Equal To
if [ $n1 -ge $n2 ]; then
    echo "$n1 is greater than or equal to $n2" # Example: If n1=7 and n2=7, output will be "7 is greater than or equal to 7"
else
    echo "$n1 is less than $n2" # Example: If n1=3 and n2=7, output will be "3 is less than 7"
fi

# -le Less Than or Equal To
if [ $n1 -le $n2 ]; then
    echo "$n1 is less than or equal to $n2" # Example: If n1=3 and n2=7, output will be "3 is less than or equal to 7"
else
    echo "$n1 is greater than $n2" # Example: If n1=7 and n2=3, output will be "7 is greater than 3"
fi

# -eq Equal To
if [ $n1 -eq $n2 ]; then
    echo "$n1 is equal to $n2" # Example: If n1=7 and n2=7, output will be "7 is equal to 7"
else
    echo "$n1 is not equal to $n2" # Example: If n1=7 and n2=3, output will be "7 is not equal to 3"
fi

# -ne Not Equal To
if [ $n1 -ne $n2 ]; then
    echo "$n1 is not equal to $n2" # Example: If n1=7 and n2=3, output will be "7 is not equal to 3"
else
    echo "$n1 is equal to $n2" # Example: If n1=7 and n2=7, output will be "7 is equal to 7"
fi

# Logical Operators
echo "Logical Operators"

# Prompt the user for two numbers for logical comparison
read -p "Enter a number for logical operations (n1): " n1
read -p "Enter another number for logical operations (n2): " n2

# Logical AND (-a)
if [ $n1 -gt 0 -a $n2 -gt 0 ]; then
    echo "Both $n1 and $n2 are greater than 0" # Example: If n1=5 and n2=3, output will be "Both 5 and 3 are greater than 0"
else
    echo "At least one of $n1 or $n2 is not greater than 0" # Example: If n1=-1 and n2=3, output will be "At least one of -1 or 3 is not greater than 0"
fi

# Logical OR (-o)
if [ $n1 -gt 0 -o $n2 -gt 0 ]; then
    echo "At least one of $n1 or $n2 is greater than 0" # Example: If n1=5 and n2=-3, output will be "At least one of 5 or -3 is greater than 0"
else
    echo "Neither $n1 nor $n2 is greater than 0" # Example: If n1=-1 and n2=-3, output will be "Neither -1 nor -3 is greater than 0"
fi

# Logical NOT (!)
if ! [ $n1 -eq $n2 ]; then
    echo "$n1 is not equal to $n2" # Example: If n1=5 and n2=3, output will be "5 is not equal to 3"
else
    echo "$n1 is equal to $n2" # Example: If n1=5 and n2=5, output will be "5 is equal to 5"
fi
