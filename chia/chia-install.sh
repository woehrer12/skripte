# Script Name:  Skripte
# Beschreibung: Installiert Chia
# Aufruf:       /skripte/chia-installer.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-05-07

#!/bin/bash

echo =====Chia Installer=====
cd #Initialisiere

skripte/updater.sh

sudo apt-get install python3.7-venv python3.7-distutils python3.7-dev git lsb-release -y

git clone https://github.com/Chia-Network/chia-blockchain.git -b latest --recurse-submodules

cd chia-blockchain

sh install.sh

. ./activate

chmod +x ./install-gui.sh

./install-gui.sh

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-05-07
# Test Systems: Debian 10
