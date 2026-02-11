#Q: Print the name and size of every file and directory in current path 
 
 #!/bin/bash 
 
echo "Name                         Size" 
echo "-------------------------------------" 
 
for item in *; do 
    if [[ -f "$item" ]]; then 
        # If file → print file size 
        size=$(stat -c%s "$item") 
    elif [[ -d "$item" ]]; then 
        # If directory → compute total size 
        size=$(du -sb "$item" | awk '{print $1}') 
    else 
        size="N/A" 
    fi 
 
    echo "$(printf '%-30s' "$item") $size bytes" 
done