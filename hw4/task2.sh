#!/bin/bash

# Task a
filteredFiles=`grep -r dataset1 -l -e "sample" | xargs -I {} bash -c 'count=$(grep "CSC510" {} -o | wc -l); [ "$count" -ge 3 ] && echo -n $count $(wc -c {}),' | sed 's/,$//g'`

# Task b
filteredFiles=`echo $filteredFiles | gawk -f sort.awk`

# Task c
filteredFiles=`echo $filteredFiles | sed 's/file/filtered/g'`
echo $filteredFiles | xargs -n1 echo
