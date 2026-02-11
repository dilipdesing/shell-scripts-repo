#Q. Find the first 10 biggest files in the file system and write the output to a file

#!/bin/bash 
# Define the output file 
output_file="largest_files.txt" 
# Find the 10 largest files in the entire file system (excluding other filesystems like /proc, /sys, 
etc.) 
# and write the output to the specified file. 
# -x option with du ensures it stays within the current filesystem. 
# -a option includes all files, not just directories. 
# -h provides human-readable output (e.g., 1K, 234M, 2G). 
# sort -rh sorts by human-readable size in reverse order (largest first). 
# head -n 10 takes the top 10 results. 
du -ahx / | sort -rh | head -n 10 > "$output_file" 
echo "The 10 largest files have been written to $output_file"