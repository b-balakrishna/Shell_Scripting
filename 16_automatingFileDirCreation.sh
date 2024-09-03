#!/bin/bash

echo "Automating File and Directory Creation"

# Prompt the user to enter the name of the directory
read -p "Enter the Directory Name: " dirname

# Create the directory if it doesn't already exist
if [ ! -d "$dirname" ]; then
    mkdir "$dirname"
    echo "Directory '$dirname' created."
else
    echo "Directory '$dirname' already exists."
fi

# Prompt the user to enter the name of the file
read -p "Enter the File Name (including extension): " filename

# Create the file inside the specified directory
if [ ! -f "$dirname/$filename" ]; then
    touch "$dirname/$filename"
    echo "File '$filename' created inside '$dirname'."
else
    echo "File '$filename' already exists in '$dirname'."
fi
