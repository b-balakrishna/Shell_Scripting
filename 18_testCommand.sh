#!/bin/bash

# Print a test message to the console
echo "Test Command"

# Print a simple string to the console
echo "String Comparisons"

# Define a variable A with the value "Javascript"
A="Javascript"

# Define an empty variable B
B=""

# Check if variable B is empty
# The `-z` option checks if the length of the string is zero
if test -z "$B"; then
    # If B is empty, print this message
    echo "String is empty"
else
    # If B is not empty, print this message
    echo "String is not empty"
fi

# Print a message indicating we are moving to number comparisons
echo "Number Comparisons"

# Define two numeric variables
num1=10
num2=10

# Check if the two numbers are equal
# The `-eq` operator checks if two numbers are equal
if test $num1 -eq $num2; then
    # If numbers are equal, print this message
    echo "Numbers are equal"
else
    # If numbers are not equal, print this message
    echo "Numbers are not equal"
fi

# Print a message indicating we are moving to file comparisons
echo "File Comparisons"

# Check if the file 'hello.txt' exists and is not empty
# The `-s` option checks if the file size is greater than zero
if test -s hello.txt; then
    # If the file is not empty, print this message
    echo "File is not empty"
else
    # If the file is empty, print this message
    echo "File is empty"
fi

# Check if 'hello' is a directory
# The `-d` option checks if the path is a directory
if test -d hello; then
    # If 'hello' is a directory, print this message
    echo "Is a Directory"
else
    # If 'hello' is not a directory, print this message
    echo "Not a Directory"
fi
