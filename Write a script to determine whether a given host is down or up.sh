#Q: Write a script to determine whether a given host is down or up

#!/bin/bash 
 
# Check if host argument is provided 
if [[ $# -ne 1 ]]; then 
 58 
    echo "Usage: $0 <hostname_or_ip>" 
    exit 1 
fi 
 
HOST="$1" 
 
# Ping the host with 2 attempts, timeout 5 seconds 
ping -c 2 -W 5 "$HOST" &> /dev/null 
 
if [[ $? -eq 0 ]]; then 
    echo "✅ Host $HOST is UP" 
else 
    echo "❌ Host $HOST is DOWN" 
fi 