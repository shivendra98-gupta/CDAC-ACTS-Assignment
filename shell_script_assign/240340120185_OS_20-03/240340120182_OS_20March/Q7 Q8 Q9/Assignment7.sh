#!/bin/bash

<<Assignment7
A data file file has some student records including rollno, names and subject marks. The fields are separated by a “:”. Write a shell script that accepts roll number from the user, searches it in the file
and if the roll number is present - allows the user to modify name and marks in 3 subjects. 
If the roll number is not present, display a message “Roll No Not Found”. Allow the user to modify one record at a time. 
Assignment7


read -p "Please Enter Roll Number : " roll_no

# grep ---> print line that matches the pattern

# grep -q ------>
<<ls
(q= quiet) do not write anything on standard output(by default grep print kra dehta hai line joh pattern seh match hote hai)
chaahe match found ho ya nhi (-q) ke wajah seh chup chaap exit ho jaao without printing any output
ls 



ls
if grep -q "^$roll_no" students.txt  
then
	read -p "Enter Name of Given Roll Number : " name
	read -p "Enter Marks obtained in Hindi : " hindi
	read -p "Enter Marks obtained in Maths : " maths
	read -p "Enter Marks obtained in Physics : " physics
	value=$(grep "^$roll_no" students.txt) 
	echo "$value"
	sed -i "s/$value/$roll_no: $name: $hindi: $maths: $physics/g" students.txt
	sed -re 's/^5:/5: aniket: 97: 90: 67/g' students.txt students.txt
	echo "Present $name $hindi $maths $physics"
else
	echo "Roll No Not Found"
fi

# grep command ^ ---->
<<ls

 Matching the Lines that Start with a String Using grep.
The ^ regular expression pattern specifies the start of a line. 
This can be used in grep to match the lines which start with the given string or pattern. 

grep "^unix" geekfile.txt
ls

#grep command $  ------>
<<ls
Matching the Lines that End with a String Using grep
The $ regular expression pattern specifies the end of a line.
 This can be used in grep to match the lines which end with the given string or pattern. 

grep "os$" geekfile.txt
ls