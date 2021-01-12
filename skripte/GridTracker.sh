# Script Name:  GridTracker Installer
# Beschreibung: Downloaded GridTracker Version 1.20 und entpackt es. Die Downloaddatei wird automatisch wieder gelöscht.
# Aufruf:       /skripte/GridTracker.sh
# Autor:        woehrer
# Version:      2
# Datum:        2021-01-12

#!/bin/bash

echo =====GridTracker 1.20=====
cd #Initialisiere

if [ -e ./GridTracker/GridTracker ]  # existiert GridTracker?
	then
		echo =====GridTracker existiert bereits=====
	else
		echo =====GridTracker wird installiert=====		

#name Der Download Datei
datei=GridTracker-Linux-64-1.20.0927.tar.gz?dl=1 

cd
echo =====GridTracker wird heruntergeladen=====
wget -N https://www.dropbox.com/s/0rbduq0ibxrrj0e/$datei
echo =====GridTracker wird entpackt=====
tar xfv $datei
=====Download Datei wieder gelöscht=====
rm $datei
fi
# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 20
