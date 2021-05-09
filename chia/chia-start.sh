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

cd chia-blockchain

. ./activate

chia start farmer

cd

space=$(df -hl -BG ./chia_temp --output=avail)

set - $space

newspace=${2: -1}

spacesize=${2:0:-1}

spacesizeint=$((spacesize-1))

echo $spacesizeint

if [ "$newspace" = "G" ]
    then
        echo =====G erkannt=====
        if [ $spacesize -gt 350 ]
            then
                echo =====Space Größer 350=====
                if [ $spacesize -gt 750 ]
                    then
                        echo =====Space Größer 750=====
                        chia plots create -k 33 -t ./chia_temp -d ./chia_fertig &
                    else 
                        chia plots create -k 32 -t ./chia_temp -d ./chia_fertig &
                fi
        fi
fi

if [ "$newspace" = "T" ]
    then
        echo =====T erkannt=====
        chia plots create -k 33 -t ./chia_temp -d ./chia_fertig &
fi