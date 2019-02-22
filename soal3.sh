#!/bin/bash

length=12
digits=({0..9})
lower=({a..z})
upper=({A..Z})
CharArray=(${digits[*]} ${lower[*]} ${upper[*]})
ArrayLength=${#CharArray[*]}
password=""
for i in `seq 1 $length`
do
        index=$(($RANDOM%$ArrayLength))
        char=${CharArray[$index]}
        password=${password}${char}
done 

file=password
numb=1

while test -e "$file$numb.txt"; do
        (( ++numb ))
done

fname="$file$numb.txt"

echo $password > "$fname"
