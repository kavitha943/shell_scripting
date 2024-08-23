#!/bin/bash
echo " enter the directory to backup : "
read dir
echo " enter the destination path : "
read dest
if [ -d "$dir" ]; then
	cp -r "$dir" "$dest/$(basename "$dir")_$(date +%y%m%d)"
	echo " backup completed"
else
	echo " $dir does not exists"
fi
