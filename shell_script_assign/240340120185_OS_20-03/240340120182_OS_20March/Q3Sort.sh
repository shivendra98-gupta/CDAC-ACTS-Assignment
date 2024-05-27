#!/bin/bash

 ls -l | awk '{ print $5, $9}' | sort -n | awk 'NR==2 {print "Minimum Value : " $2} END {print "Max Value : " $2}'

#echo " $get " 
