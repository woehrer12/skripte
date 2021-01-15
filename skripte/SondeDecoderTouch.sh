# Script Name:  Skripte
# Beschreibung: Downloaded alle Skripte in den Ordner /Skripte und aktualisiert sie falls neue vorhanden sind
#		Erster Download Erfolg nach Download in /. Dort wird das Skript nach dem ersten ausführen wieder gelöscht.
# Aufruf:       /skripte/skripte.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-11

#!/bin/bash

echo =====SoneDocoderTouch=====
cd #Initialisiere

skripte/updater.sh

echo =====Installation Apache2=====
sudo apt install apache2
sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/

echo =====Installation php=====
sudo apt install php php-mbstring
sudo rm /var/www/html/index.html
sudo echo "" > /var/www/html/index.php
sudo apt install mariadb-server php-mysql

echo =====Installation phpmyadmin=====
sudo apt install phpmyadmin
echo -e "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo service apache2 restart


echo =====Installation MQTT Broker Mosquito=====
sudo apt install -y mosquitto mosquitto-clients
sudo systemctl enable mosquitto.service
mosquitto -v

echo =====SFTP Install=====
sudo adduser rdzsonde --no-create-home
pwd rdzsone
sudo usermod -G www-data rdzsonde 
sudo usermod -d /var/www/html/ rdzsonde
sudo chown rdzsonde:www-data -R /var/www/html
sudo chmod 775 -R /var/www/html

echo =====Rechte MQTT vergeben=====
mosquitto_passwd -c /etc/mosquitto/conf.d/passwd rdzsonde
sudo nano /etc/mosquitto/conf.d/auth.conf





# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
