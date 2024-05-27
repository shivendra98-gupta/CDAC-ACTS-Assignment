#!/bin/bash
<<comment
Write a shell script which will generate the O/P as follows

*
**
***
****
*****
comment

for (( i=0; i<=5 ;i++))
do   
	for (( j=0;j<=i; j++))
	do
	echo -n "*"
	done
	echo " "
done



	



