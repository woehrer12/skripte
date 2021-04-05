# Script Name:  Skripte
# Beschreibung: Installiert den Docker mit Sondensucher
# Aufruf:       /skripte/sondensucher.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-04-05

#!/bin/bash

echo =====Sondensucher Installer=====
cd #Initialisiere

echo =====Docker Installer=====
skripte/docker-install.sh

echo =====Sondensucher Git Download=====
git clone https://github.com/woehrer12/sondensucher.git

echo =====Sondensucher Installer=====
sondensucher/install.sh

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
