#Version 1 2021-01-06

#!/bin/bash

cd

sudo apt-get update -q
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

if [ -d ./skripte ]  # existiert Ordner Skripte
	then
   		echo =====Wechsle in Skripte=====
   	else
		echo =====Ordner Skripte wird erstellt=====
		mkdir skripte	
fi
cd skripte/
wget -N xmoo.de/skripte.sh
sudo chmod +x ./skripte.sh
cd
skripte/skripte.sh
echo =====Skripte aktualisiert=====
