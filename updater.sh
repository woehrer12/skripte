# Script Name:  Updater
# Beschreibung: Installiert alle System Updates und Bereinigt alles.
#						Stößt auch ein Update der Skripte an
# Aufruf:       /skripte/updater.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-11

#!/bin/bash

echo =====Updater=====

sudo apt-get update -y -q
echo =====Update durchgeführt=====
sudo apt-get upgrade -y -q
echo =====Upgrade durchgeführt=====
sudo apt-get dist-upgrade -y -q
echo =====Dist-Upgrade durchgeführt=====
sudo apt-get clean -y -q
echo =====Clean durchgeführt=====
sudo apt-get autoclean -y -q
echo =====AutoClean durchgeführt=====
sudo apt-get autoremove -y -q
echo =====Autoremove durchgeführt=====

git pull ~/skripte

echo =====Skripte aktualisiert=====

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
