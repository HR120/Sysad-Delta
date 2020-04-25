#!/bin/bash

today_date=`date +%Y-%m-%d`

for i in {1..50}
do
	awk -v date=${today_date} -v pattern=".*${today_date}.*Navy$i .*" '$0 ~ pattern {print date,$3,$4}' ./position.log >> /home/navy$i/post_alloted.txt
	awk -v date=${today_date} -v pattern=".*${today_date}.*AirForce$i .*" '$0 ~ pattern {print date,$3,$4}' ./position.log >> /home/airforce$i/post_alloted.txt
	awk -v date=${today_date} -v pattern=".*${today_date}.*Army$i .*" '$0 ~ pattern {print date,$3,$4}' ./position.log >> /home/army$i/post_alloted.txt
done

echo "Positions alloted."