#!/bin/bash

concatenateString(){
	a=$1
	b=$2
	c="${a}${b}"
	echo $c
}

stringLength(){
	c="${#1}"
}

compareString(){
	if [ "$1" == "$2" ]
	then
		echo Entered Strings are Equal 
	else
		echo Entered String are not Equal
	fi
}

palindromeString (){
	c="$(rev <<< "$1")"
	if [ $c == "$1" ]
	then
		echo Given String is Palindrome
	else 
		echo Given String is Not Palindrome
}

reverseString() {
	c=$(rev <<< "$1")
	echo Reverse of string is "$c" 	
}




echo "Enter 1st String"
read str1
echo "Enter 2nd String" 
read str2

concatenateString $str1 $str2

stringLength $str1

compareString $str1 $str2

palindromeString $str1

reverseString $str2
