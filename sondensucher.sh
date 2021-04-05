# Script Name:  Skripte
# Beschreibung: Installiert den Docker mit Sondensucher
# Aufruf:       /skripte/sondensucher.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-04-05

#!/bin/bash

echo =====Sondensucher Installer=====
cd #Initialisiere

echo =====Docker Installer=====
skripte/docker-install.sh

cd
if [ -d ./sondensucher]  # existiert Ordner Skripte
	then
   		cd sondensucher/
      git pull
   	else
		echo =====Ordner sondensucher wird erstellt=====
		git clone https://github.com/woehrer12/sondensucher.git
fi

cd


echo =====Sondensucher Installer=====
sondensucher/install.sh

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
