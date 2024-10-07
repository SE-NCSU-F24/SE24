#!/bin/bash

empty=""
removeTrailingSpace(){
    trimmed=`echo "$1" | sed 's/^[[:space:]]*//g' | sed 's/[[:space:]]*$//g'`
    if [ "$trimmed" = "$empty" ]; then
        echo 0
    else
        echo $trimmed
    fi
}

filteredFiles=""
for file in dataset1/*; do
    if [ -f $file ]; then
        hasSample=`cat $file | grep "sample" -o | uniq -c | grep -E "\s+([0-9]+)" -o`
        hasAtleastThreeStr=`cat $file | grep "CSC510" -o | uniq -c | grep -E "\s+([0-9]+)" -o`
        fileSize=`wc -c $file`
        hasSample=$(removeTrailingSpace $hasSample)
        hasAtleastThreeStr=$(removeTrailingSpace $hasAtleastThreeStr)
        fileSize=$(removeTrailingSpace $fileSize)
        if [ $hasSample -gt 0 -a $hasAtleastThreeStr -gt 2 ]; then
            info="$file $hasSample $hasAtleastThreeStr $fileSize"
            info=$info$","
            filteredFiles+=$info
        fi
    fi
done

filteredFiles=`echo $filteredFiles | sed 's/,$//g' | gawk -f sort.awk`

for file in $filteredFiles; do
    echo `echo $file | sed 's/file/filtered/g'`
done
