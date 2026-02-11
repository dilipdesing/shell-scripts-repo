#Q. Shell script to Copy files recursively to remote hosts

#!/bin/bash 
 
# --- Configuration Variables --- 
LOCAL_DIR_TO_COPY="./source_directory"  # Change this to your local source directory 
path 
REMOTE_HOST="server.example.com"        # Change this to your remote server's hostname 
or IP 
# ------------------------------- 
 
# Prompt for the remote username 
read -p "Enter your remote username for $REMOTE_HOST: " REMOTE_USER 
 
# Prompt for the remote destination path (e.g., /home/username/backup_destination) 
read -p "Enter the remote destination path on $REMOTE_HOST: " REMOTE_DEST 
 
echo "Starting recursive copy..." 
echo "Source: $LOCAL_DIR_TO_COPY" 
echo "Destination: $REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST" 
 
# The core scp command 
# -r: Recursively copies directories 
# -P 22: Specifies the port (default is 22, can be omitted if default) 
scp -r "$LOCAL_DIR_TO_COPY" 
"$REMOTE_USER@$REMOTE_HOST:$REMOTE_DEST" 
 
# Check the exit status of the scp command 
if [ $? -eq 0 ]; then 
    echo "Successfully copied files recursively." 
else 
    echo "File copy failed. Please check permissions, paths, and SSH connectivity." 
fi