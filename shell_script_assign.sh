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

