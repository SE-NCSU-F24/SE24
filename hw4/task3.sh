#!/bin/bash

grep ',2,' titanic.csv | grep 'S$' | \
sed 's/<male>/M/g; s/<female>/F/g' | \
awk -F ',' '
    {
        print $0;  # Print the entire row
        if ($7 != "") {sum += $7; count++} 
    } 
    END {
        if (count > 0) print "Average Age:", sum / count; 
        else print "No valid ages found."
    }'
