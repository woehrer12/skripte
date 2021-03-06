# Script Name:  Skripte
# Beschreibung: Downloaded alle Skripte in den Ordner /Skripte und aktualisiert sie falls neue vorhanden sind
#		Erster Download Erfolg nach Download in /. Dort wird das Skript nach dem ersten ausführen wieder gelöscht.
# Aufruf:       /skripte/skripte.sh
# Autor:        woehrer
# Version:      2
# Datum:        2021-01-11

#!/bin/bash

echo =====Skripte werden aktualisiert=====
cd #Initialisiere

if [ -d ./skripte ]  # existiert Ordner Skripte
	then
   		echo =====Wechsle in Skripte=====
   	else
		echo =====Ordner Skripte wird erstellt=====
		mkdir skripte	
fi

cd skripte/

wget -N -q xmoo.de/anydesk.sh
sudo chmod +x ./anydesk.sh

wget -N -q xmoo.de/docker-install.sh
sudo chmod +x ./docker-install.sh

wget -N -q xmoo.de/funkstarter.sh
sudo chmod +x ./funkstarter.sh

wget -N -q xmoo.de/git-clone-skripte.sh
sudo chmod +x ./git-clone-skripte.sh

wget -N -q xmoo.de/github.sh
sudo chmod +x ./github.sh

wget -N -q xmoo.de/GridTracker.sh
sudo chmod +x ./GridTracker.sh

wget -N -q xmoo.de/iobroker-update.sh
sudo chmod +x ./iobroker-update.sh

wget -N -q xmoo.de/server-einrichten.sh
sudo chmod +x ./server-einrichten.sh

wget -N -q xmoo.de/skripte.sh
sudo chmod +x ./skripte.sh

wget -N -q xmoo.de/SondeDecoderTouch.sh
sudo chmod +x ./SondeDecoderTouch.sh

wget -N -q xmoo.de/SunSDR2DX.sh
sudo chmod +x ./SunSDR2DX.sh

wget -N -q xmoo.de/tty0tty.sh
sudo chmod +x ./tty0tty.sh

wget -N -q xmoo.de/updater.sh
sudo chmod +x ./updater.sh

wget -N -q xmoo.de/wsjtx.sh
sudo chmod +x ./wsjtx.sh

cd

if [ -e ./skripte.sh ]  # schaue ob skripte.sh im Home existiert und lösche es
	then
		echo =====skripte.sh wird gelöscht=====
		rm ./skripte.sh   		
fi

# Versiontest Version 2
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
