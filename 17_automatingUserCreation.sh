#!/bin/bash

echo "Automating User Creation"

# Prompt the user to enter a new username
read -p "Enter username: " username

# Check if the user already exists
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
else
    # Prompt the user to enter a password (hidden input for security)
    read -s -p "Enter password: " password
    echo # Move to a new line after the password input

    # Create the new user with a home directory and bash shell
    sudo useradd -m -s /bin/bash "$username"

    # Set the user's password
    echo "$username:$password" | sudo chpasswd

    # Confirm the user creation and password setup
    if id "$username" &>/dev/null; then
        echo "User '$username' created and password set successfully."
    else
        echo "Failed to create user '$username'."
    fi
fi
