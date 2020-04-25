#!/bin/bash

#paths of the required scripts
UserGenerate=./usergenerate.sh
permission=./chn_permit.sh
autoschedule=./position.sh
attendance=./attendance.sh
record=./query.sh



#adding aliases to the resource .bashrc file
echo "alias userGenerate=$UserGenerate" >> ~/.bashrc
echo "alias permit=$permission" >> ~/.bashrc
echo "alias autoSchedule=$autoschedule" >> ~/.bashrc
echo "alias attendance=$attendance" >> ~/.bashrc
echo "alias record=$record $1" >> ~/.bashrc
