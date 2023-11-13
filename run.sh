#!/bin/bash

# Check if the script is run with root privileges
if [ "$EUID" -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

# Open /etc/resolv.conf in Nano
nano /etc/resolv.conf

# Add the nameserver entry
echo "nameserver 8.8.8.8" >> /etc/resolv.conf

# Save and exit
echo "Saving changes and exiting Nano..."
sleep 2 # Adding a delay to ensure Nano completes its operation
# You can replace 'nano' with 'Ctrl+X' if you want to use the shortcut to exit Nano
echo -e "Ctrl+O\nEnter\nCtrl+X" | nano /etc/resolv.conf

echo "DNS server 8.8.8.8 added to /etc/resolv.conf."
