#!/bin/bash

#read input
read -p "" x
read -p "" y
read -p "" z

#identify triangle
if [ $x -eq $y -a $y -eq $z ]	#transitive property [ if x=y and y=z then x=z ]
then
	echo "EQUILATERAL"
elif [ $x -eq $y -o $x -eq $z -o $y -eq $z ]	#combinations [ abc --> combinations are ab,bc,ca ]
then
	echo "ISOSCELES"
else
	echo "SCALENE"
fi


