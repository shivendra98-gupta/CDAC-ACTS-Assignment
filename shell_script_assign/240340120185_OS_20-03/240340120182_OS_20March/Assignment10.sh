#!/bin/bash

<<Assignment10
Write a script that takes a command line argument and reports on its file type (regular file, directory file, etc.). For more than one argument generate error message. 
Assignment10

file=$1
number=$#
if [ "$#" -eq 0 ]; then
	echo "Usage: $0 <file1> [<file2> ... ]"
	exit 1
fi

if [ $number -eq 1 ] 
then
	if [[ -b $file ]]
	then
		echo "Given File is Block File"
	elif [[ -d $file ]]
	then
		echo "Given is Directory"
	elif [[ -f $file ]]
	then
		echo "Given File is Ordinary File"
	elif [[ -h $file ]]
	then
		echo "Given File is Symbolic Link"
	elif [[ -p $file ]]
	then
		echo "Given File is Named pipe File"
	elif [[ -c $file ]]
	then
		echo "Given File is Character Device"
	elif [[ -e $file ]]
	then
		echo "File Exists"
	else
		echo "Nothing as such Exists"
	fi
else
	echo "ERROR:More than one Arguments Passed"
fi
