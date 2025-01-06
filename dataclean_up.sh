#this script cleans up temporary files and unnecessary logs:
#!/bin/bash

# Directories to clean up
cleanup_dirs=("/tmp" "/var/tmp")

# Iterate through each directory
for dir in "${cleanup_dirs[@]}";do

# Find and remove files not accessed in the last 7 days
find "$dir" -type f -atime +7 -exec rm -f {} \;

 # Log the cleanup action
echo "cleaned up $dir."
done
