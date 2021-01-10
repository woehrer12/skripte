#Version 2 2021-01-10

#!/bin/bash

cd

if [ -e skripte/updater.sh ]  # existiert Updater?
	then
   		echo =====Updater existiert bereits=====
   	else	
		cd skripte
		wget -N xmoo.de/skripte.sh
		sudo chmod +x ./skripte.sh
		skripte/skripte.sh
		cd	
fi
skripte/updater.sh
echo =====Update erfolgreich=====

#tty0tty starten

if [ -d ./tty0tty ]  # existiert Updater?
	then
   		echo =====tty0tty existiert bereits=====
		sudo depmod
		sudo modprobe tty0tty
		sudo chmod 666 /dev/tnt*
   	else
		skripte/tty0tty.sh	
fi



#SunSDR2 starten

if [ -e ./SunSDR2DX/ExpertSDR2.sh ]  # existiert GridTracker?
	then
		echo =====ExpertSDR2 existiert=====
	else
		echo =====ExpertSDR2 wird installiert=====
		skripte/SunSDR2DX.sh
		
fi

./SunSDR2DX/ExpertSDR2.sh &
echo =====ExpertSDR2 wird gestartet=====
sleep 20s


#WSJTX starten
echo =====WSJT-X wird gestartet=====
if [[ -f $(which wsjtx 2>/dev/null) ]]
    then
	echo "=====WSJTX ist installiert====="
    else
	echo "=====WSJTX wird installiert====="
	skripte/wsjtx.sh
fi
wsjtx &



#GridTracker starten
if [ -e ./GridTracker/GridTracker ]  # existiert GridTracker?
	then
		echo =====GridTracker existiert bereits=====
	else
		echo =====GridTracker wird installiert=====
		skripte/GridTracker.sh
		
fi
echo =====GridTracker wird gestartet=====	
./GridTracker/GridTracker &
