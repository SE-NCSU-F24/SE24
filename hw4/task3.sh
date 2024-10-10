#!/bin/bash

cat titanic.csv | \
awk -F ',' '
BEGIN {OFS=","}
$3 == 2 && $NF ~ /S/ {
    gsub(/\<male\>/, "M", $0)
    gsub(/\<female\>/, "F", $0)
    print $0
    if ($7 != "") {sum += $7; count++}
}
END {
    if (count > 0) print "Average Age:" sum / count
    else print "No valid ages found."
}' | \
tee >(grep -v "Average Age:" > filtered_data.csv)