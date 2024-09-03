#!/bin/bash

# Print a message explaining what arrays are
echo "Arrays is a data structure to store multiple values in a single variable"

# Define an array called nameList with multiple programming languages as its elements
nameList=("Javascript" "Java" "Python" "React")

# Print the first element of the array (index 0)
echo ${nameList[0]} # Javascript

# Print the second element of the array (index 1)
echo ${nameList[1]} # Java

# Print the first element of the array without using the curly braces
echo $nameList # Javascript

# Print all elements of the array using the asterisk (*) which acts as a wildcard
echo ${nameList[*]} # Javascript Java Python React

# Print all elements of the array using the asterisk (@) which acts as a wildcard
echo ${nameList[@]} # Javascript Java Python React

# Get the length of the array
arrayLength=${#nameList[@]}

# Print the length of the array
echo "The length of the array is: $arrayLength"