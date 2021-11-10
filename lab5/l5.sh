#!/bin/bash

count=0

#Loops through the list of usernames in the system

for USER in `awk -F: '{print$1}' /etc/passwd`
do

	#Reads every line of /var/log/secure

	while IFS= read -r line; 
	do 
		#If the line logs a failed password attempt, increment count
		
		if [[ $line =~ " Failed password for $USER " ]]
		then
			count=$((count+1))
		fi
	done < /var/log/secure
	
	#If count is greater than 2, alert the sys admin 
	
	if [[ $count -gt 2 ]]
	then
		echo "Someone has tried $count times to hack $USER"
	fi

	#Resets count to check the next username
	count=0
done
