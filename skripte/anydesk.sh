#Version 1 2021-01-10

#!/bin/bash

if [[ -f $(which anydesk 2>/dev/null) ]]
    then
	echo "=====Anydesk ist installiert====="
    else
	echo "=====Anydesk wird installiert====="
	sudo wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | apt-key add -
	echo "deb http://deb.anydesk.com/ all main" > /etc/apt/sources.list.d/anydesk-stable.list
	skripte/updater.sh
	sudo apt install anydesk

fi
