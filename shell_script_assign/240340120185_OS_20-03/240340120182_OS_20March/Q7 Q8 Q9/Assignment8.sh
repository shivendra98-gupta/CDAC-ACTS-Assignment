#!/bin/bash

<<Assignment8
Modify program 7 to accept the RollNo from the command line.
Assignment8



roll_no=$1
echo "Entered Roll Number is : $roll_no" 


if grep -q "^$roll_no" students.txt
then
	read -p "Enter Name of Given Roll Number : " name
	read -p "Enter Marks obtained in Hindi : " hindi
	read -p "Enter Marks obtained in Maths : " maths
	read -p "Enter Marks obtained in Physics : " physics
	value=$(grep "^$roll_no" students.txt) 
	#echo "$value"
	sed -i "s/$value/$roll_no: $name: $hindi: $maths: $physics/g" students.txt
	sed -re 's/^5:/5: mangu: 99: 99: 99/g' students.txt students.txt
	echo "Present $name $hindi $maths $physics"
else
	echo "Roll No Not Found"
fi


