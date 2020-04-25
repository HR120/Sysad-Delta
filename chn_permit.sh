#!/bin/bash

#changing permissions for home directory of chiefcommander
chmod 700 /home/ChiefCommander

#changing soldier's home directory group to resp. troop groups
for i in {1..50}
do
	chgrp navy /home/navy$i
	chgrp airforce /home/airforce$i
	chgrp army /home/army$i
done

echo "Permissions changed!"