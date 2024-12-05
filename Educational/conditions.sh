#!/bin/bash

#-gt (>) , -lt(<) , -ge(>=) , le (<=) , eq (=) , -ne (!=)
echo "Enter your degree:"
read degree 
echo "Your degree is :${degree}" #["$degree" -ge "80" ] && echo "Passed" || echo "Failed"
if ["$degree" -ge "50"]; then
	echo "passed"
elif [[ "$degree" -eq "80" ]]; then
	echo "got 80" #["$degree" -eq "80" ] && echo "he got 80" 
elif [[ "$degree" -eq "70" ]]; then
	echo "got 70" #["$degree" -eq "70" ] && echo "he got 70" 
else
	echo "failed"
fi

