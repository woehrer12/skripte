#Version 1 2021-01-06

#!/bin/bash

if [[ -f $(which git 2>/dev/null) ]]
    then
	echo "=====Git ist installiert====="
    else
	echo "=====Git wird installiert====="
	sudo apt-get install git -y
fi
