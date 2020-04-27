#!/bin/bash

while read 
	do
		echo "$REPLY" | tr \(\) \[\]
	done


#some tr and sed examples

sed -r -e 's/\(/\[/;s/\)/\]/' input-tr-1 == tr \(\) \[\]
#int i=[int]5.8
#[23 + 5]*2


tr [[:upper:]] [[:lower:]] < input.txt == tr [a-z] [A-Z] < input.txt


Syntax: tr [options] [set A] [set B] #it uses strictly one-one mapping

tr -d [[:lower:]] < input.txt == tr -d [a-z] < input.txt
