#!/bin/bash

echo "Functions"

# Function Syntax in Bash
# functionName() {
#     # Code to execute
# }
# functionName # Function call

# Simple Function Definition
greetings() {
    echo "Hello"
}

# Call the greetings function
greetings

# Parameterized Function to calculate the sum of two numbers
sum() {
    # First parameter assigned to variable 'a'
    a=$1
    # Second parameter assigned to variable 'b'
    b=$2
    # Calculate the sum of 'a' and 'b' and store in variable 'c'
    c=$((a + b))
    # Print the result
    echo "Sum = $c"
}

# Call the sum function with two arguments
sum 12 37

# Parameterized Function to display a name
getName() {
    # Print the name passed as the first argument
    echo "Name is $1"
}

# Call the getName function with an argument
getName "Bahubali"

# Function with a Return Value
sub() {
    # First parameter assigned to variable 'a'
    a=$1
    # Second parameter assigned to variable 'b'
    b=$2
    # Calculate the difference between 'a' and 'b' and store in variable 'c'
    c=$((a - b))
    # Return the result (Note: This only returns an exit status, which is an integer between 0 and 255)
    return $c
}

# Call the sub function with two arguments
sub 12 37
# Capture the return value using $?
returnVal=$?
# Print the return value
echo "Return Value is: $returnVal"

