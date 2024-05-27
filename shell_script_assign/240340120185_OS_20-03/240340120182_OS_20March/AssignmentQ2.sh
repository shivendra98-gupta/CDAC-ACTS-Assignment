#!/bin/bash
<<comment

Accept the first name, middle name, and last name of a person in variables fname, mname and lname respectively. Greet the person (take his full name) using appropriate message
comment

read fname
read mname
read lname

echo " Nice to meet you Mr $fname $mname $lname !"

