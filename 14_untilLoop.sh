#!/bin/bash

# Print a message indicating the start of an 'until' loop
echo "Until Loop (reverse of while loop - executes until condition is false)"

# Syntax:
# until [ condition ]
# do
#     # code
# done

# Initialize a counter variable
counter=5

# Start an 'until' loop that continues as long as 'counter' is greater than 0
until [ $counter -le 0 ]
do
    # Print the current value of 'counter'
    echo "Counter is: $counter"

    # Decrement the counter by 1
    ((counter--))
done

# Define an array called nameList with multiple programming languages
nameList=("Javascript" "Java" "Python" "React")

# Get the length of the array and store it in a variable
length=${#nameList[@]}

# Initialize a counter variable to the last index of the array
index=$((length - 1))

# Start an 'until' loop that continues as long as the 'index' is greater than or equal to 0
until [ $index -lt 0 ]
do
    # Print the element at the current index
    echo ${nameList[index]}

    # Decrement the index by 1
    ((index--))
done