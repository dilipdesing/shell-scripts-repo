#Q: Write a script to remove all the empty files in a given directory (including nested directories)

#!/bin/bash 
 
# Check if directory is passed 
if [[ $# -ne 1 ]]; then 
    echo "Usage: $0 <directory_path>" 
    exit 1 
fi 
 
TARGET_DIR="$1" 
 
# Validate directory 
if [[ ! -d "$TARGET_DIR" ]]; then 
    echo "Error: $TARGET_DIR is not a valid directory" 
    exit 1 
fi 
 
echo "Finding and deleting empty files under: $TARGET_DIR" 
 
# Find and delete empty files 
find "$TARGET_DIR" -type f -empty -print -delete 
 
echo "Cleanup completed!"