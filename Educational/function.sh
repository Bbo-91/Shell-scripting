#!/bin/bash

# ($1 --$... ) variables
printInfo(){
	echo "========= User info ========="
	echo "welcome $1"
	echo "Age $2"
	echo "work $3"
	echo "summary all parameters $@"
	echo "number of parameters $#"
}

echo "processID: $$"

printInfo Bbo 19 "A college student"
printInfo Abanob 19 "anfsiu"
printInfo Bebo 19 "asfona asifbnsan afejnwn"

ls ~/Desktop
if [ "$?" = "0" ] # worked = 0
then 
	echo "There is files on desktop"
else
	echo "there is no files"
fi

echo "Passed to script: $?" 