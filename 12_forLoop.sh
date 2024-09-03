#!/bin/bash

# Print a message indicating the start of a 'for' loop
echo "For Loop"

# A 'for' loop that runs 5 times
for ((i=0; i<5; i++))
do
    echo "Learning"
done

# Define an array called nameList with multiple programming languages
nameList=("Javascript" "Java" "Python" "React")

# Print all elements of the array
echo ${nameList[@]} # Javascript Java Python React

# Loop through each element in the array 'nameList'
for i in ${nameList[*]}
do
    # Since 'i' is the value of the array element (like "Javascript", "Java", etc.),
    # 'nameList[i]' does not work as intended.
    # It should just echo the value of 'i' to print each language correctly.
    echo $i
done

# Get the length of the array
arrayLength=${#nameList[@]}

for ((i=0; i<arrayLength; i++)){
    echo "index $i :" ${nameList[i]}
}
