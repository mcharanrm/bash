#!/bin/bash

#without awk
#declare -a array
while read
	do	
		counter=0
		for item in $REPLY
			do
				array[$counter]="$item"
				let counter+=1
			done
		
		if [ "${array[1]}" -lt 50 -o "${array[2]}" -lt 50 -o "${array[3]}" -lt 50 ]
		then
			echo "${array[0]} : Fail"
		else
			echo "${array[0]} : Pass"
		fi
	done




#awk
#while read
#	do
#		/usr/bin/awk '
#			BEGIN {
#				FS=" "
#			}
#			{
#				if ( $2 < 50 || $3 < 50 || $4 < 50 )
#					{
#					print $1,": Fail"
#				}
#				else	
#					{
#					print $1,": Pass"
#				}
#			}
#		'
#	done

