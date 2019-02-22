#!/usr/bin/awk 

awk '/cron/ || /CRON/,!/sudo/' /var/log/syslog | awk 'NF < 13 {print}' >> /home/izzah/modul1/logsoal5.log

crontab: 2-30/6 * * * * /bin/bash /home/izzah/lima.sh
