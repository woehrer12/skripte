# Script Name:  IOBroker Updater
# Beschreibung: Updated den IOBroker. Er wird erst gestoppt und anschliesend wieder gestartet
# Aufruf:       /skripte/iobroker-update.sh
# Autor:        woehrer
# Version:      2
# Datum:        2021-01-11

#!/bin/bash

echo =====IOBroker Updater=====
cd #Initialisiere

skripte/updater.sh

cd /opt/iobroker

echo =====IOBroker gestoppt=====
sudo iobroker stop

echo =====IOBroker Update=====
sudo iobroker update

echo =====IOBroker Upgrade Self=====
sudo iobroker upgrade self

echo =====IOBroker Start=====
sudo iobroker start

# Versiontest Version 2
# Tested by: woehrer
# Test date: 2021-01-11
# Test Systems: Debian