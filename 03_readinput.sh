#!/bin/bash

# Script to read input from the user and display it back

# Prompt the user to enter their name
echo "Enter your name please"

# Read the user's input and store it in the variable 'name'
read name

# Display the name entered by the user
echo "Your name is: $name"

# Prompt the user to enter their age and store the input in the variable 'age'
read -p "Enter your age: " age

# Display the age entered by the user
echo "Your age is: $age"

# Note: Avoid using the 'read' command without a variable.
# This is considered a bad practice because it stores the input in the default variable $REPLY,
# making the code less readable and more prone to errors.

# Example of bad practice:
# read
# echo "name: $REPLY"
# read
# echo "age: $REPLY"

# Prompt the user to enter their username and store it in the variable 'USERNAME'
read -p "Username: " USERNAME

# Prompt the user to enter their password without echoing input to the screen and store it in 'PASSWORD'
read -sp "Password: " PASSWORD

# Add a newline for formatting after silent input
echo

# Display the username and password entered by the user
echo "Username is $USERNAME and Password is $PASSWORD"
