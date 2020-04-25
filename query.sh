#!/bin/bash

today_date=`date +%Y-%m-%d`
day=`date +%a`

case "$day" in
  "Mon") daysToSubt=$(($1+1))
  "Tue") daysToSubt=$(($1+2))
  "Wed") daysToSubt=$(($1+3))
  "Thu") daysToSubt=$(($1+4))
  "Fri") daysToSubt=$(($1+5))
  "Sat") daysToSubt=$(($1+6))
  "Sun") daysToSubt=$(($1+7))
esac

query_date=$(date --date="${today_date} -${daysToSubt} day" +%Y-%m-%d)

troop_chief=$(whoami)

awk '{if($1=="${query_date}") print $1,$2}' /home/${troop_chief}/attendance_record.txt

echo "This is the requested record."