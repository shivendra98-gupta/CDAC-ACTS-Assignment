#!/bin/bash

<<comment
Write a shell script that greets the user with an appropriate message depending on the system time
comment
h=$(date +%H)

if [ $h -lt 12 ]
then
	echo "Good morning" 
elif [ $h -lt 18 ]  &&  [ $h -ge 12 ]
then
	echo "Good Afternoon"
elif [ $h -lt 20 ]  &&  [ $h -ge 18 ]
then
	echo "Good night"
else
	echo "Good Evening"
fi
