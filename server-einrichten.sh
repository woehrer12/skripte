# Script Name:  Server einrichten
# Beschreibung: Stellt alle wichtigen Parameter an einem neuen Server ein.
#						SSH Timeout wird sehr hoch gesetzt.
#						Neuer sudo User wird angelegt
#						SSH Root Login wird deaktiviert
# Aufruf:       /skripte/server-einrichten.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-11

#!/bin/bash

echo =====Server einrichten=====
cd #Initialisiere

echo =====Neues Root Passwort festlegen=====

passwd

echo =====Ändern des SSH Timeout=====
#nach der Anleitung von https://www.bjornjohansen.com/ssh-timeout

#Suche nach ServerAliveInterval und löscht die gesamte Zeile
sed '/ServerAliveInterval/d' ~/.ssh/config

#Fügt ServerAliveInterval 120 in Datei ein"
echo -e "ServerAliveInterval 120" >> ~/.ssh/config

#Suche nach ClientAliveInterval und löscht die gesamte Zeile
sed '/ClientAliveInterval/d' /etc/ssh/sshd_config

#Fügt ClientAliveInterval 120 ein"
echo -e "ClientAliveInterval 120" >> /etc/ssh/sshd_config

#Suche nach ClientAliveCountMax und löscht die gesamte Zeile
sed '/ClientAliveCountMax/d' /etc/ssh/sshd_config

#Fügt ClientAliveCountMax 120 ein"
echo -e "ClientAliveCountMax 120" >> /etc/ssh/sshd_config

echo =====User anlegen=====

read user
adduser $user
usermod -aG sudo $user

echo =====Skripte in Userverzeichnis kopieren=====
cp -r skripte /home/$user

#Suche nach PermitRootLogin und löscht die gesamte Zeile
sed -i '/PermitRootLogin/d' /etc/ssh/sshd_config

#Fügt PermitRootLogin no ein"
echo -e "PermitRootLogin no" >> /etc/ssh/sshd_config

/etc/init.d/ssh reload

#Füge automatische Updates in Crontab ein
cat <(sudo crontab -l) <(echo "* 3 * * * * /skripte/updater.sh") | sudo crontab -



skripte/updater.sh




# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-11
# Test Systems: Ubuntu Server
