#!/bin/bash

# Display a message indicating the start of arguments handling
echo "Arguments"

# This script expects arguments to be passed from the command line.
# Example usage: ./05_arguments.sh hello busy world

# Display the name of the script itself
echo "Script name: $0" # Outputs the name of the script, e.g., ./05_arguments.sh

# Display the first argument passed to the script
echo "First argument: $1" # Outputs 'hello'

# Display the second argument passed to the script
echo "Second argument: $2" # Outputs 'busy'

# Display the third argument passed to the script
echo "Third argument: $3" # Outputs 'world'

# Display all arguments as a single string, preserving spaces
echo "All arguments: $@" # Outputs 'hello busy world'

# Display the number of arguments passed to the script
echo "Number of parameters: $#" # Outputs the count of arguments, e.g., 3

# Store the first argument in a variable
arg1=$1
echo "Stored argument (arg1): $arg1" # Outputs 'hello'
