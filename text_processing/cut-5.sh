#!/bin/bash

while read
	do
		#echo "$REPLY"|awk 'BEGIN {FS="[[:space:]]{3}"}{print $1,$2}'
		echo "$REPLY" |/usr/bin/cut -f-3	#default, it uses tab as delimiter
	done
