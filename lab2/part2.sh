#!/bin/sh

for USER in `awk -F: '{print $1}' /etc/passwd`
do
	userid=$(id -u $USER)
	usergroups=$(id -nG $USER)
	echo "$USER $userid $usergroups"
done
