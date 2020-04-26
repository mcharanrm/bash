#!/bin/bash

#https://www.hackerrank.com/challenges/text-processing-in-linux-the-sed-command-2/problem

while read
    do
        status=$(echo "$REPLY"|sed -r -n '/[[:space:]]?[Tt][Hh][Yy][[:space:]]/p')
        if [ -z "$status" ]
        then
            echo "$REPLY"
        else
            echo "$(echo "$REPLY"|sed -r -n 's/[Tt][Hh][Yy]/your/gp')"
        fi
    done

