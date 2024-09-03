#!/bin/bash

# Simple File Integrity Checker using md5sum

echo "File Integrity Checker"

# Function to generate hash for a given file
generateHash() {
    # Prompt the user to enter the file name
    read -p "Enter the file name (including extension): " fileName
    # Generate MD5 hash and save it in a .md5 file
    md5sum "$fileName" > "$fileName.md5"
    echo "Hash has been stored in $fileName.md5"
}

# Function to check if the file hash matches the stored hash
checkHashValue() {
    # Prompt the user to enter the file name
    read -p "Enter File Name: " fileName
    # Read the stored hash from the .md5 file
    generatedHash=$(cat "$fileName.md5")
    # Generate the current hash of the file
    output=$(md5sum "$fileName")
    
    # Compare the stored hash with the current hash
    if [ "$generatedHash" == "$output" ]; then
        echo "There is no change in file"
    else
        echo "Something is fishy"
    fi
}

# Display options to the user
echo "1. Generate Hash"
echo "2. Check file integrity"

# Read the user choice
read -p "Enter your choice: " choice

# Execute the corresponding function based on user choice
case $choice in
    1)
        echo "Generating Hash..."
        generateHash
        ;;
    2)
        echo "Checking file integrity..."
        checkHashValue
        ;;
    *)
        echo "Invalid Choice"
        ;;
esac
