#!/bin/bash
echo " Enter the Filename : "
read filename
if [ -f "$filename" ]; then
	echo " $filename exists"
else
	echo " $filename doesn't exists"
fi
