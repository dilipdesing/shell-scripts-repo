#Q: Write a shell script to logs the currently logged-in users to a file with a timestamp and displays the log.

#!/bin/bash 
 
# Define the output file name 
OUTPUT_FILE="logged_in_users.log" 
 
# Define a separator for clarity in the log file 
SEPARATOR="--------------------------------------------------" 
 
# Get the current date and time 
CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S") 
 
# Use the 'who' command to list currently logged-in users 
# who: Provides basic information (username, terminal, login time) 
 
# Append the current timestamp and user list to the output file 
echo "$SEPARATOR" >> "$OUTPUT_FILE" 
echo "Log Entry Date: $CURRENT_TIME" >> "$OUTPUT_FILE" 
echo "Current Users:" >> "$OUTPUT_FILE" 
who >> "$OUTPUT_FILE" 
echo "" >> "$OUTPUT_FILE" # Add a blank line for readability between entries 
 
echo "Logged current users to $OUTPUT_FILE" 
cat "$OUTPUT_FILE"