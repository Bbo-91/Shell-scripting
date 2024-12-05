#!/bin/bash
echo "enter number"
read number
#if [[ "$number" -eq "1" ]]; then
#	echo "1 Entered"
#lif [[ "$number" -eq "3" ]]; then
#	echo "3 Entered"
#elif [[ "$number" -eq "2" ]]; then
#	echo "2 Entered"
#else
#	echo "out of range"
#fi
case $number in
	1) echo "1 Entered"
		;;
	2) echo "2 Entered"
		;;
	3) echo "3 Entered"
		;;
	*) echo "out of range"
esac