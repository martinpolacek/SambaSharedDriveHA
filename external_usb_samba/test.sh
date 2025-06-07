#!/bin/bash

# Script for testing the addon locally

echo "Testing External USB Disk Samba Share addon..."

# Check if running in Home Assistant environment
if [ ! -f "/usr/bin/bashio" ]; then
    echo "Error: This addon requires Home Assistant environment"
    exit 1
fi

# Check if /dev/sda1 exists
if [ ! -b "/dev/sda1" ]; then
    echo "Warning: /dev/sda1 not found. Make sure your USB disk is connected."
    echo "Available block devices:"
    lsblk
fi

# Check required packages
echo "Checking Samba installation..."
if ! command -v smbd &> /dev/null; then
    echo "Error: Samba not installed"
    exit 1
fi

# Test configuration parsing
echo "Testing configuration..."
if [ -f "/data/options.json" ]; then
    echo "Configuration file found"
    cat /data/options.json
else
    echo "Warning: No configuration file found"
fi

echo "Test completed successfully!"

