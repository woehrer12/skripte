# Script Name:  WSJTX Installer
# Beschreibung: Installiert die neuste Version von WSJTX
# Aufruf:       /skripte/skripte.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-11

#!/bin/bash

echo =====WSJTX 2.3.0-rc3=====
echo =====Nur unter Ubuntu 20 lauffähig=====
cd #Initialisiere

#name Der Download Datei
datei=wsjtx_2.3.0-rc3_amd64.deb

cd
echo =====WSJTX wird heruntergeladen=====
wget -N https://physics.princeton.edu/pulsar/k1jt/$datei
echo =====WSJTX wird installiert=====
sudo dpkg -i $datei
echo =====Download Datei wieder gelöscht=====
rm $datei

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 20