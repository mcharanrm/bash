#!/bin/bash

#without using awk
#declare -a array
#while read 
#	do	
#		array=(0 0 0 0)
#		REPLY="$(echo -e "$REPLY"|sed -r -n 's/[[:space:]]*$//p')"
#		counter=0
#		for item in $REPLY		#can be simplified using ${#REPLY[@]} < 4
#			do
#				array[$counter]="$item"
#				let counter+=1
#			done
#		if [ ${array[1]} -eq 0 -o ${array[2]} -eq 0 -o ${array[3]} -eq 0 ]
#		then
#			echo "Not all scores are available for ${array[0]}"
#		fi
#	done
#
#
#using awk

while read 
	do
		echo "$REPLY"|/usr/bin/awk '
		BEGIN {
			FS=" "
			}
		{
			if ($1 == "" || $2 == "" || $3 == "" || $4 == "")
				{
					print "Not all scores are available for "$1
				}
		}
	'
	done

