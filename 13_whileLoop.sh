#!/bin/bash

# Print a message indicating the start of a 'while' loop
echo "While loop"

# while [ condition ]
# do
#     # Commands to be executed as long as the condition is true
# done

# Initialize a counter variable
counter=0

# Start a while loop that will run as long as the value of 'counter' is less than 5
while [ $counter -lt 5 ]
do
    # Print the current value of the counter
    echo "Counter is at: $counter"
    
    # Increment the counter by 1
    ((counter++))
done

echo "While loop finished."

# Define an array called nameList with multiple programming languages
nameList=("Javascript" "Java" "Python" "React")

# Initialize the counter variable 'i'
i=0

# Start a while loop that continues as long as 'i' is less than the length of the array
while [ $i -lt ${#nameList[@]} ]
do
    # Print the element at the current index 'i'
    echo ${nameList[i]}
    
    # Increment the counter variable 'i' by 1
    ((i++))
done