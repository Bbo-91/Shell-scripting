#!/bin/bash

echo "Hello ,Bbo" > Welcome.txt #crate a new file
echo "Where do you live ?" > Welcome.txt #if the file exist rewrite it
echo "Where do you live ?" >> Welcome.txt #add the input to the file without rewritting


#cat Welcome.txt /read from file
while read line
do
	echo "$line"
done < Welcome.txt
echo "$line"


#write to file
rm -rf users.txt
echo "usernames list"
read userName
while [[ "$userName" != "" ]]; do
	echo $username >> users.txt
done

cat <<EOF > users.welcome
Bbo
bebo
abanob
EOF
#put names in users
