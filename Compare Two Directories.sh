#Q: Compare Two Directories

#!/bin/bash 
# compare_dirs.sh 
 
DIR1="$1" 
DIR2="$2" 
 
if [[ ! -d "$DIR1" || ! -d "$DIR2" ]]; then 
    echo "Usage: $0 <dir1> <dir2>" 
    exit 1 
fi 
 
diff -r "$DIR1" "$DIR2"