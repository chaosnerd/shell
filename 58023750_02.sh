#!/bin/bash
VAR="0"
if [ "$1" == "expense.dat" ]; 
then
    while read -r line 
    do
        IFS=',' read -r -a array <<< "$line"
        let "VAR=${VAR}+(${array[1]}*${array[2]})"
    done < "expense.dat"
    echo "Total: $VAR"
fi
