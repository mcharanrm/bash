#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-1/problem

while read
	do
		status=$(echo "$REPLY"|sed -n '/[[:space:]]the[[:space:]]/p')
		if [ -z "$status" ]
		then
			echo "$REPLY"
		else
			echo "$(echo "$REPLY"|sed -n 's/the/this/p')"
		fi
	done

