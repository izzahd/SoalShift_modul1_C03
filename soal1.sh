#!/bin/bash

number=1
for file in "nature/"*
do
        base64 -d "$file" | xxd -r > "foto"$number".jpg"
        mv ~/"foto"$number".jpg" ~/nature
        let number++
done
