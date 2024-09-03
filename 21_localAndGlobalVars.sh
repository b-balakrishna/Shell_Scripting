#!/bin/bash

# Print message indicating the topic of local and global variables
echo "Local and Global Variable"

# Define global variables
os="Ubuntu" 
ram="8GB"

# Define a function func1
func1() {
    # Modify the global variable 'os' inside the function
    os="Windows"  # This modifies the global 'os' variable, changing its value from "Ubuntu" to "Windows"

    # Define a local variable 'rom' inside the function
    rom="1TB"  # This variable 'rom' is local to func1 and does not affect global variables

    # Print the value of 'os' after modification
    echo "Inside func1: $os"  # Will print "Windows"

    # Print the value of global variable 'ram'
    echo "Inside func1: $ram"  # Will print "8GB"
}

echo "Before func1: $os $ram $rom"  # 'os' will be "Windows", 'ram' will be "8GB", 'rom' will be empty
# Call the function func1
func1

# Print the values of global variables and the local variable 'rom'
# Note: 'rom' is not defined in the global scope, so it will be empty here
echo "After func1: $os $ram $rom"  # 'os' will be "Windows", 'ram' will be "8GB", 'rom' will be "1TB"
