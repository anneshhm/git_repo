#!/bin/bash
size=$(df -h . | tail -1 | awk '{print $5}' | sed 's/%//g')

# to read time when crontab/scheduled or to read job ran time using scheduling crontab

tim=$(date | tail -1 | awk '{print "script last ran at " $1, $2,$3, $4, $5, $6}')



if [ "$size" -gt 35 ]; then
  echo "------------------------------------------------" >> percent
  echo " Disk size is 35%, please clean it " >> percent
  echo "$tim" >> percent
else
  echo "------------------------------------------------" >> percent
  echo "not exceeded"
  echo "$tim" >> percent

fi

##!/bin/bash
# for disk space
#df -h | head -2 | tail -1 | awk '{print $3}' | sed 's/G//g'

#to find system memory space limit reached
#size=$(free -h | head -2 | tail -1 | awk '{print $6}'| sed 's/Mi//g')
#if [ '$size' -gt 100 ];then
#echo  "current usageis $sizeMB" > percent2
#mail -s "RAM usage alert" -c "abc@gmail.com" < percent2
#fi

#ls -lt | head -2 | tail -1 | awk '{print "file is created on " $6,$7 " at " $8}'

