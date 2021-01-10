#Version 1 2021-01-10

#!/bin/bash

echo =====Server einrichten=====

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





skripte/updater.sh
