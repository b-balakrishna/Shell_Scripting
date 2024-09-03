#!/bin/bash

# Print a message explaining nested functions
echo "Calling function inside a function is called a Nested Function"

# Define the demo function
demo() {
    # Print a message indicating entry into the demo function
    echo "Inside demo func"

    # Define a nested function inside demo called demo2
    demo2() {
        # Print a message indicating entry into the demo2 function
        echo "Inside demo2 func"
    }

    # Call the nested function demo2
    demo2
}

# Call the demo function
demo

# Define the sum function with nested function sub
sum() {
    # Print the sum of the first and second arguments
    echo "sum of $1 and $2 is : $(($1 + $2))"

    # Define a nested function inside sum called sub
    sub() {
        # Print the difference of the first and second arguments
        echo "sub of $1 and $2 is : $(($1 - $2))"
    }

    # Call the nested function sub with arguments $2 and $1
    sub $2 $1
}

# Call the sum function with two arguments
sum 3 6
