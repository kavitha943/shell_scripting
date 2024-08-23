#!/bin/bash
echo " enter  directory to display size : "
read dir
if [ -d "$dir" ]; then
	:'multiple options to replace with "-d" are
	 -e = to check if the variable is file or directory exists.
	 -f = to check if the variable is regular file.
	 -L = to check if file exists and is a symbolic link.
	 -r =  to check if file exists and readable.
	 -w = to check if file exists and writable.
	 -x = to check if file exists and executable.
	 -s = to check if file or directory exists and is not empty. '
	du -sh "$dir" # displays disk usage(du) in summary of human readable format(-sh)
else
	"directory does not exists"
fi
