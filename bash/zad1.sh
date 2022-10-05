#!/bin/bash
read a
echo ""
echo "2"
for (( x=3; x<=a; x++))
do
	czy=0
	for (( y=2; y<x; y++))
	do
		if [ `expr $x % $y` -eq 0 ]; then
			czy=1
		fi
	done
	if [ $czy -eq 0 ]; then
		echo $y
	fi
done
