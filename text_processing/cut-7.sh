#!/bin/bash

while read
	do
		echo "$REPLY"|/usr/bin/cut -d' ' -f4
	done
