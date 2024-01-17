#!/bin/bash

# Check if the required arguments are provided
if [ "$#" -ne 2 ]; then
    echo "Error: Two arguments are required."
    exit 1
fi

# Assign arguments to variables
writefile="$1"
writestr="$2"

# Extract the directory path
dir_path=$(dirname "$writefile")

# Create the directory if it doesn't exist
mkdir -p "$dir_path"

# Create the file with content
echo "$writestr" > "$writefile"

# Check if the file was created successfully
if [ "$?" -ne 0 ]; then
    echo "Error: Unable to create the file $writefile."
    exit 1
fi

