#!/bin/bash

<<Assignment13

Create a library of shell functions to do the following:
1. Function to concatenate 2 strings. Pass 2 strings to function as parameters.
2. Function to find out the length of a given string. Pass string as parameter to function.
3. Function to compare the two strings. Pass 2 strings as parameters to function.
4. Function to check if string is palindrome or not. Pass string as a parameter to function.
5. Function to print given string in reverse order. Pass a string as parameter to function.

Assignment13

echo "Question4"
echo ""
#Concatenate 2 Strings
concat () {
	str1=$1
	str2=$2
	#c=$str1+$str2
	echo "Hello Brothers, $str1$str2"
	echo " "
}
concat shivendra gupta


#Length of Given String
length () {
	str=$1
	len=${#str}
	echo "Length of Given String is $len"
	echo ""
}
length shivendra gupta


#Comparison of two strings
cmpstr () {
	str1=$1
	str2=$2
	echo "String1 : $str1"
	echo "String2 : $str2"
	if [ "$str1" == "$str2" ]
	then 
		echo "Strings are Same"
	else
		echo "Strings are not Same"
	fi
	echo " "
}
cmpstr shivendra gupta


#Palindrome or not
palind () {
	echo "$1"
	if [ $1 == $(rev <<< $1) ]
       	then
		echo "Given String is Palindrome"
	else
		echo "Given String is Not Palindrome"
	fi
	echo ""
}
palind noon

#Reverese String
revstr () {
	echo "$1"
	echo "Reverse of a Given String is "
	rev <<< $1                             # to reverse a string write rev <<< $1
}
revstr shivendra
