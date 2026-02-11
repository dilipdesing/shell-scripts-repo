#Q: Write a script to backup a Directory

 
#!/bin/bash 
# backup.sh: Backup a directory to /backup with timestamp 
 
SOURCE_DIR=$1 
BACKUP_DIR="/backup" 
TIMESTAMP=$(date +%F_%H-%M-%S) 
DEST="$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" 
 
mkdir -p "$BACKUP_DIR" 
tar -czf "$DEST" "$SOURCE_DIR" 
 
echo "Backup completed: $DEST" 