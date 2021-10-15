#!/bin/sh

d=$(date +%D)
t=$(date +%T)
f=/root/lab2/part3-test
e=$(awk 'END {print $NF}' /root/lab2/part3-log.txt)

if test -f $f
    then 
	if [ "$e" != "found" ] || [ -z "$e" ]
		then echo $d $t - File $f has been found >> part3-log.txt
	fi

elif [ "$e" != lost ] || [ -z "$e" ]
    then  echo $d $t - File path $f has been lost >> part3-log.txt
fi 
