#!/bin/bash

#https://www.hackerrank.com/challenges/lonely-integer-2/problem

read -p "" n
read -p "" 
declare -a array 
declare -a tmp
array=($REPLY)

for item in ${array[*]}
	do
		size="${#tmp[*]}"
		if [ "$size" -eq 0 ]
		then
			tmp[0]="$item"
		else
			for ((i=0;i<size;i++))
				do
					if [ "$item" -eq "${tmp[$i]}" ]
					then
						unset tmp[$i]
						break
					fi
				done
			if [ "$size" -eq "${#tmp[*]}" ]
			then
				tmp["${#tmp[*]}"]="$item"
			fi
		fi
	done


echo ${tmp[*]}				
