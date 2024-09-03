#!/bin/bash

# Print a message indicating the operation being performed
echo "User Deletion"

# Prompt the user to enter a username to be deleted
read -p "Enter the username: " username

# Prompt the user to enter their system password (used for sudo)
read -sp "Enter Your password: " syspassword  # The '-s' flag hides the input for security

# Define a function to delete the user
delUser() {
    # Use sudo with the '-S' option to read the password from standard input
    # Pipe the entered password to sudo to authenticate the deluser command
    echo $syspassword | sudo -S deluser $username
}

# Call the function to delete the user
delUser
