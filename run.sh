#!/bin/bash

kill -9 $(ps aux | grep "fuse" | awk '{print $2}')

# Check if the correct number of arguments is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <basename>"
    echo "       <basename> is the name of the BASIC file without the .bas extension."
    exit 1
fi

# Assign the argument to a variable
base_name=$1

# Define the paths for the .bas and .tap directories
bas_dir="./bas"
tap_dir="./tap"

# Check if the .bas file exists
if [ ! -f "$bas_dir/$base_name.bas" ]; then
    echo "Error: File $bas_dir/$base_name.bas not found."
    exit 1
fi

# Convert the .bas file to a .tap file
txt2bas -i "$bas_dir/$base_name.bas" -o "$tap_dir/$base_name.tap"

# Check if txt2bas succeeded
if [ $? -ne 0 ]; then
    echo "Error: Failed to convert $bas_dir/$base_name.bas to $tap_dir/$base_name.tap"
    exit 1
fi

# Run fuse with the newly created .tap file
fuse --full-screen --machine 128 --tape "$tap_dir/$base_name.tap" &


