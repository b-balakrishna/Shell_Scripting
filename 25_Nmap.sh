#!/bin/bash

# Network Map Tool (Nmap) - A script to perform network scans using nmap

echo "Network Map Tool (Nmap)"

# Prompt the user for the hostname
read -p "Enter the hostname: " hostname

# Prompt the user for the system password (hidden input)
read -sp "Enter the password: " systemPassword
echo # Just to add a newline after password input

# Function to perform different types of scans using nmap
nMapFunction() {
    # Display scan options
    echo $' 1. Normal Scan\n 2. TCP Scan\n 3. UDP Scan'

    # Prompt the user to choose a scan option
    read -p "Choose option: " option

    # Perform the scan based on the chosen option
    case $option in
        1)
            echo "...Normal Scan..."
            # Execute a normal scan with nmap
            echo $systemPassword | sudo -S nmap $hostname
            ;;
        2)
            echo "...TCP Scan..."
            # Execute a TCP scan with nmap
            echo $systemPassword | sudo -S nmap -sT $hostname
            ;;
        3)
            echo "...UDP Scan..."
            # Execute a UDP scan with nmap
            echo $systemPassword | sudo -S nmap -sU $hostname
            ;;
        *)
            # Handle invalid options
            echo "Please enter a valid option"
            ;;
    esac
}

# Call the nMapFunction to start the scanning process
nMapFunction
