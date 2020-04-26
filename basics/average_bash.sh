#!/bin/bash

#read -p "Total Numbers: "
#total=0
#for ((i=0;i<$REPLY;i++))
#	do
#		read -p "" n
#		#let total+=n
#		((total=total+n))
#	done
#
#average=$(bc -l<<EOF
#$total/$REPLY
#EOF
#)

total=0
counter=0
while read number
	do
		let total+=$number
		let counter+=1
	done < numbers.bkp

average=$(bc -l<<EOF
$total/$counter
EOF
)


#printf "%d\n" "$(expr $total / $REPLY)"	#integer result
printf "%.2f\n" "$average"  #floating point result
