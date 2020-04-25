#!/bin/bash

#making groups
addgroup navy
addgroup airforce
addgroup army

#setting default file permission to rwxrwx--- or 770
umask 007

#adding users
useradd -p chiefcommander@123 -d ChiefCommander -G navy,airforce,army ChiefCommander

useradd -p navymarsha@123 -d NavyMarshal -G navy NavyMarshal
useradd -p airforcechief@123 -d AirForceChief -G airforce AirForceChief
useradd -p armygeneral@123 -d ArmyGeneral -G army ArmyGeneral

for i in {1..50}
do
	useradd -d "navy$i" -p "navy$i@123" Navy$i
	useradd -d "airforce$i" -p "airforce$i@123" AirForce$i
	useradd -d "army$i" -p "army$i@123" Army$i
done

echo "Users generated."