#!/bin/bash

# Specify the Downloads directory
DOWNLOADS_DIR="$HOME/Downloads"

# Initialise counter
count=0

# Loop through all files with .rpm extension in the Downloads directory
for file in "$DOWNLOADS_DIR"/*.rpm; do
  # Check if file exists to avoid errors when no .rpm files are present
  if [ -e "$file" ]; then
    echo "Deleting $file"
    rm "$file"
    ((count++))  # Increment counter
  fi
done

# Print the total number of .rpm files deleted
echo "Total RPMS deleted: $count"
