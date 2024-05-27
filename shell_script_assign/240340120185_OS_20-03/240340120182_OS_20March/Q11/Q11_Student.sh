#!/bin/bash

<<comment
argument generate error message.  
11	Add some student records in the “student” file manually. The fields to be considered are “RollNo”, “Name”, “Marks_Hindi”, “Marks_Maths”, “Marks_Physics”.
 Write a script which does the following 
a	If the roll number already exists, then store the record and the following message 
“roll number exists” in a log file “log1”.
b	If the marks in the subjects is not in the range of 1 – 99 then store such a record followed by a message “marks out of range” in “log1”
c	If the data is valid, the calculate total, percentage, grade and display on the terminal





comment

echo "Enter The roll Number you want to search "
read roll

if grep -q "^$roll" students.txt
then
	echo "$roll exits ">>log1.txt            
	echo "$roll already exits"
	exit									#Important 
fi

echo "Enter Name"
read Name
echo "Enter marks in hindi"
read Marks_Hindi
echo "Enter marks in Maths"
read Marks_Maths
echo "Enter marks in Physic"
read Marks_Physics

if (( $Marks_Hindi < 1  ||  $Marks_Hindi > 99  ||  $Marks_Maths < 1  ||  $Marks_Maths > 99  ||  $Marks_Physics < 1  ||  $Marks_Physics > 99 )) ; then
	echo "Marks out of Range ">>log1.txt
	echo "Marks out of Range "
else
	total=$(( $Marks_Hindi + $Marks_Maths + $Marks_Physics ))		# ((  ))   <-----these are important
	percentages=$(( $total / 3 ))									# ((  ))   <-----these are important
	if (( $percentages < 35 )); then
		grade="F"
	elif (( $percentages >= 35  &&  $percentages < 50 )); then
		grade="E"
	elif (( $percentages >= 50  &&  $percentages < 60 ));then
		grade="D"
	elif (( $percentages >= 60  &&  $percentages < 75  ));then
		grade="C"
	elif (( $percentages >= 75  &&  $percentages < 85 ));then
		grade="B"
	elif (( $percentages >= 85  &&  $percentages < 100  ));then
		grade="A"
	fi

	echo "Roll Number:  $roll"
	echo "Name: $Name"
	echo "Marks in Hindi: $Marks_Hindi"
	echo "Marks in Maths: $Marks_Maths"
	echo "Marks in Physics: $Marks_Physics"
	echo "Total Marks: $total"
	echo "Percentage: $percentages %"
	echo "Grade: $grade"

fi
	





	





