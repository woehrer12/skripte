#ubuntu initialisieren

from ubuntu

#OS Update
RUN sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get clean && sudo apt-get autoremove

#Apache2 Install
sudo apt install apache2

#PHP Install
sudo apt install php php-mbstring php-mysql

#PHPmyAdmin Install
#TODO

#Mosquitto Installieren
sudo apt install -y mosquitto mosquitto-clients
#TODO Passwort definieren

#MYSQL install
#TODO
