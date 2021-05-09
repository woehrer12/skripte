# Script Name:  Skripte
# Beschreibung: Installiert Chia
# Aufruf:       /skripte/chia-installer.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-05-07

#!/bin/bash

echo =====Chia Start=====
cd #Initialisiere

if [ -e ./chia_temp ]  # existiert Updater?
	then
   		echo =====Chia Temp bereits=====
        rm -r -f ./chia_temp
        mkdir ./chia_temp
   	else	
        echo =====Chia Temp nicht gefunden=====
        mkdir ./chia_temp
fi

if [ -e ./chia_fertig ]  # existiert Updater?
	then
   		echo =====Chia Fertig bereits=====
   	else	
        echo =====Chia Fertig nicht gefunden=====
        mkdir ./chia_fertig
fi

# cd chia-blockchain

# . ./activate

# chia start farmer

space=$(df -hl -BG ./chia_temp --output=avail)

echo $space

