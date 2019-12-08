#!/bin/bash
echo -n "The number of $1 amino acids in $2 is:"
grep $1 $2 | grep CA | wc | colrm 10

