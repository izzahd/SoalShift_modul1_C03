#!/usr/bin/awk

echo "a"
awk -F, 'NR > 1 && $7 == "2012" {arr[$1]+=$10} END {for (i in arr) {print arr[i], i}}' WA_Sales_Products_2012-14.csv | sort -nrk1 | awk '{print $1 " " $2 " " $3} NR==1{exit}'

echo "b"
awk -F, 'NR > 1 && $7 == "2012" && $1 == "United States" {arr[$4]+=$10} END {for (i in arr) {print arr[i], i}}' WA_Sales_Products_2012-14.csv | sort -nrk1 | awk '{print $1 " " $2 " " $3} NR==3{exit}'

echo "c"
echo "--Personal Accessories"
awk -F, 'NR > 1 && $7 == "2012" && $1 == "United States" && $4 == "Personal Accessories" {arr[$6]+=$10} END {for (i in arr) {print arr[i],i}}' WA_Sales_Products_2012-14.csv | sort -nrk1 | awk '{print $1 " " $2 " " $3 " " $4} NR==3{exit}'
echo "--Camping Equipment"
awk -F, 'NR > 1 && $7 == "2012" && $1 == "United States" && $4 == "Camping Equipment" {arr[$6]+=$10} END {for (i in arr) {print arr[i],i}}' WA_Sales_Products_2012-14.csv | sort -nrk1 | awk '{print $1 " " $2 " " $3 " " $4} NR==3{exit}'
echo "--Outdoor Protection"
awk -F, 'NR > 1 && $7 == "2012" && $1 == "United States" && $4 == "Outdoor Protection" {arr[$6]+=$10} END {for (i in arr) {print arr[i],i}}' WA_Sales_Products_2012-14.csv | sort -nrk1 | awk '{print $1 " " $2 " " $3 " " $4} NR==3{exit}'
