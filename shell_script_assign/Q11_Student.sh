#!/bin/bash

echo "Enter The roll Number you want to search "
read roll

if grep -q "^$roll" StudentFile.txt
then
	echo "$roll exits ">>log.txt
	echo "$roll already exits"
	exit
fi

echo "Enter Name"
read Name
echo "Enter marks in hindi"
read Marks_Hindi
echo "Enter marks in Maths"
read Marks_Maths
echo "Enter marks in Physic"
read Marks_Physics

if [ $Marks_Hindi < 1 ] || [ $Marks_Hindi > 99 ] || [ $Marks_Maths < 1 ] || [ $Marks_Maths > 99 ] || [ $Marks_Physics < 1 ] || [ $Marks_Physics > 99 ]; then
	echo "Marks out of Range ">>log.txt
	echo "Marks out of Range "
else
	total=$(( $Marks_Hindi + $Marks_Maths + $Marks_Physics ))
	percentages=$(( $total / 3 ))
	if [ $percentages < 35 ]; then
		grade="F"
	elif [ $percentages >= 35 ] && [ $percentages < 50 ]; then
		grade="E"
	elif [ $percentages >= 50 ] && [ $percentages < 60 ];then
		grade="D"
	elif [ $percentages >= 60 ] && [ $percentages <75  ];then
		grade="C"
	elif [ $percentages >= 75 ] && [ $percentages <85 ];then
		grade="B"
	elif [ $percentages >= 85 ] && [ $percentages < 100  ];then
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
	





	





