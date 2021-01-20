# Script Name:  Skripte
# Beschreibung: Downloaded alle Skripte in den Ordner /Skripte und aktualisiert sie falls neue vorhanden sind
#		Erster Download Erfolg nach Download in /. Dort wird das Skript nach dem ersten ausführen wieder gelöscht.
# Aufruf:       /skripte/github.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-10

#!/bin/bash

echo =====Git installer=====
cd #Initialisiere

if [[ -f $(which git 2>/dev/null) ]]
    then
	echo "=====Git ist installiert====="
    else
	echo "=====Git wird installiert====="
	sudo apt-get install git -y
fi

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18
