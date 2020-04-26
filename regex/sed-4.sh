#!/bin/bash


while read 
    do
       	 #echo "$REPLY" | sed -r -n 's/^[1-9]{4}[[:space:]][0-9]{4}[[:space:]][0-9]{4}/**** **** ****/gp'
	 #echo "$REPLY" | sed -r -n 's/([0-9]{4}[[:space:]]){3}/**** **** **** /gp'
	 echo "$REPLY" | sed  -r -n -e 's/[[:space:]]*$//;s/([0-9]{4}[[:space:]])/**** /gp'
    done




