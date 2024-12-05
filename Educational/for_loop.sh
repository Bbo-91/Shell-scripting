#!/bin/bash

for i in {1..100}
do
	echo "Hello $i"
done

echo "Range print"
for i in 1 10 30 50
do echo "hello $i"
done

echo "list files"
for file in *
do
	echo "file is: ${file}"
done

echo "from 10 - 50"
for i in {1..100}
do
	if [[ "$i" -ge "10" && "$i" -le "50" ]]; then
		echo $i
	fi
done