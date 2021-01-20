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
sudo apt install apache2 -y
sudo chown -R pi:www-data /var/www/html/
sudo chmod -R 770 /var/www/html/

echo =====Installation php=====
sudo apt install php php-mbstring -y
sudo rm /var/www/html/index.html
sudo echo "" > /var/www/html/index.php
sudo apt install mariadb-server php-mysql -y

echo =====Installation phpmyadmin=====
sudo apt install phpmyadmin -y
sudo echo -e "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf
sudo service apache2 restart
sudo mysql -u root -p

echo =====Installation MQTT Broker Mosquito=====
sudo apt install -y mosquitto mosquitto-clients -y
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
sudo echo -e "allow_anonymous false" >> /etc/mosquitto/conf.d/auth.conf
sudo echo -e "password_file /etc/mosquitto/conf.d/passwd" >> /etc/mosquitto/conf.d/auth.conf

echo =====Git Clone=====
cd
skripte/github.sh
git clone https://github.com/p1337/SondeDecoderTouch.git
mkdir /var/www/html/sonden
sudo chmod 775 -R /var/www/html/sonden
sudo cp -r ./SondeDecoerTouch/www_html_sonden /var/www/html/sonden

echo =====RPI DISPLAY=====
sudo rm -rf LCD-show 
git clone https://github.com/goodtft/LCD-show.git
chmod -R 755 LCD-show
sudo LCD-show/LCD35-show 90

echo =====Skript ws.php=====
sudo nano /lib/systemd/system/rdzmqtt.service
sudo systemctl enable /lib/systemd/rdzmqtt.service

echo =====Low Voltage Warnung=====
sudo echo -e "avoid_warnings=1" >> /boot/config.txt


echo =====Datenbank erstellen=====
php "/var/www/html/sonden/Datenbankanlegen.sh"

sudo reboot

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
