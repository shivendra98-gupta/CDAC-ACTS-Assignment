#!/bin/bash

<<Assignment9
Modify the program 7 to accept the RollNo and display the record and ask for delete confirmation. Once confirmed delete the record and update the data file.
Assignment9

read -p "Enter Roll Number : " roll_no

if grep "^$roll_no" students.txt
then
	read -p "Are you Sure you Want to delete the record(y/n) : " flag
	if [ "$flag" == "y" ]
	then
		sed -i "/^$roll_no:/ d" students.txt
		echo "Record Deleted" 
	else
		echo "Record Not Deleted"
	fi
else
	echo "Given Roll Number $roll_no Doesn't Exist in file"
fi

<<ls
https://www.geeksforgeeks.org/sed-command-in-linux-unix-with-examples/
ls