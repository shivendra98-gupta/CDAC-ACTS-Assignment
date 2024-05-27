#!/bin/bash
<<comment
Write a script that accepts a member into MBT health club, if the weight of the person is withing the range of 30-250 Kgs
comment


echo "enter your weight"
read weight


if (( $weight >=  30 && 250 >= $weight ))  # use 2 open parenthesis
then
	echo "accept MBT club"                                   
else
	echo "rejected from MBT club"
fi
