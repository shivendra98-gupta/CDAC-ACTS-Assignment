#!/bin/bash
<<comment
Write a script which when executed checks out whether it is a working day or not?
comment
read day


if [ "$day" == "sunday" ] || [ "$day" == "saturday" ]
then 
	echo "WeekEnd "
else
	echo "WorkingDAY"
fi	


