#!/bin/bash

tanggal=$(date +"%H:%M %d-%m-%Y")
jam=$(date +"%H")

if [[ ${jam:0:1} -eq 0 ]]
then
    jam=${jam:1:1}
fi

syslog=$(</var/log/syslog)

lowcase=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
syslog=$(echo "$syslog" | tr "${lowcase:0:26}" "${lowcase:${jam}:26}")

upcase=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
syslog=$(echo "$syslog" | tr "${upcase:0:26}" "${upcase:${jam}:26}")

echo "$syslog" > "$tanggal".log
