# Script Name:  Anydesk
# Beschreibung: Prüft ob Anydesk installiert ist. Wenn nicht installiert es Anydesk
# Aufruf:       /skripte/anydesk.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-10

#!/bin/bash

echo =====Anydesk Installer=====
cd #Initialisiere

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

# Versiontest Version 1
# Tested by: * TODO
# Test date: * TODO
# Test Systems: * TODO