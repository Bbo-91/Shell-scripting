#!/bin/bash

read -p "Enter the path to the dirctory" dir

find "$dir" -type d -empty | while read dir
do 
	rmdir "$dir"
	echo "Removed : $dir"

done

echo "Cleanup completed"
else
	echo "There is no empty files in this folder"