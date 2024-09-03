#!/bin/bash

# This script demonstrates the use of variables in Bash

echo "Variables: containers to store values"

# Defining user-defined variables
echo "User Defined Variables"

# Assigning values to variables
name="Luffy"  # Stores the string "Luffy" in the variable 'name'
age=23        # Stores the integer 23 in the variable 'age'

# Displaying the values of the variables
echo $name $age  # Prints the values of 'name' and 'age'

# Displaying the current shell in use
echo $SHELL  # Prints the path of the shell currently being used

# Defining a variable using command substitution
CURRENT_DATE=$(date +%Y-%m-%d)  # Uses the 'date' command to get the current date in YYYY-MM-DD format

# Displaying the current date
echo "DATE:" $CURRENT_DATE  # Prints the current date
