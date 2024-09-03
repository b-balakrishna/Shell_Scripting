#!/bin/bash

# Display a message indicating the start of command substitution
echo "Command Substitution"

# Use command substitution to get the current working directory
# and store it in the variable 'current_directory'
current_directory=$(pwd)
# current_directory=`pwd` Alternative

# Output the current working directory
echo "Your Current working directory is: $current_directory"

# Create a new file named 'hello.txt'
# Note: The 'touch' command doesn't output anything, so the result is empty
newfile=$(touch hello.txt)

# Inform the user that the file has been created
echo "File has been created: $newfile"
