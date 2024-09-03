#!/bin/bash

# Prompt the user for the server address they want to ping
read -p "Which server do you want to ping? " server_address

# Validate if the user provided an address
if [ -z "$server_address" ]; then
    echo "No server address provided. Exiting."
    exit 1
fi

# Ping the provided server address
# -c3: Send 3 packets
# -w5: Wait up to 5 seconds for a response
ping -c3 -w5 "$server_address"

# Note: Quotes around $server_address ensure proper handling of addresses with spaces
