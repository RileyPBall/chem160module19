#!/bin/bash
if [ $# -ne 2 ]; then
	echo "Script takes 2 arguements, an AA and a pdb file"
	exit 1
fi
if [ ! -f $2 ]; then
	echo "There is no file $2"
	exit 1
fi
echo -n "The number of $1 amino acids in $2 is:"
grep $1 $2 | grep CA | wc | colrm 10

