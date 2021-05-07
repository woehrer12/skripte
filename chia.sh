# Script Name:  Skripte
# Beschreibung: Startet chia
# Aufruf:       /skripte/chia.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-05-07

#!/bin/bash

echo =====Chia starter=====
cd #Initialisiere

cd chia-blockchain

. ./activate

cd chia-blockchain-gui

npm run electron &

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-05-07
# Test Systems: Debian 10
