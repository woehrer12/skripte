# Script Name:  Docker Install
# Beschreibung: 	Löscht zuerst alter Docker Installationen. Fügt Docker Repository hinzu und installiert Docker.
# 						Es wird zum Test Docker "hello-world" ausgeführt. 
#						Anschliesend wird portainer installiert um Docker zu verwalten
# Aufruf:       /skripte/docker-install.sh
# Autor:        woehrer
# Version:      2
# Datum:        2021-01-11

#!/bin/bash

echo =====Docker installieren=====

#nach der Anleitung von https://docs.docker.com/engine/install/ubuntu/
echo =====Alte Versionen von Docker löschen=====

#sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get remove docker docker.io containerd runc -y

~/skripte/updater.sh

echo =====Neue Docker Dateien installieren=====
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y


echo =====Docker Installieren=====
sudo curl -fsSL https://get.docker.com | sh

# echo =====Docker GPG KEY hinzufügen=====
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# echo =====Docker Fingerprint 0EBFCD88 ausgeben=====

# echo =====Docker Repository hinzufügen=====
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"

~/skripte/updater.sh

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

sudo apt install docker-compose -y

echo =====Teste Docker Installation=====

sudo docker run hello-world

#docker run -it ubuntu bash

echo =====Portainer installieren=====

sudo docker run -d -p 8000:8000 -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce

sudo docker ps

sudo groupadd docker

sudo gpasswd -a $USER docker

newgrp docker

# Versiontest Version 2
# Tested by: woehrer
# Test date: 2021-01-11
# Test Systems: Ubuntu Server
