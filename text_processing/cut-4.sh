#!/bin/bash

while read
	do
		echo "$REPLY"|/usr/bin/cut -c-4
	done
