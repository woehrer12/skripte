#Version 1 2021-01-10

#!/bin/bash

#nach der Anleitung von https://docs.docker.com/engine/install/ubuntu/

echo =====Docker installieren=====
echo =====Alte Versionen von Docker löschen=====

#sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get remove docker docker.io containerd runc

/skripte/updater.sh

echo =====Neue Docker Dateien installieren=====
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
    
echo =====Docker GPG KEY hinzufügen=====
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo =====Docker Fingerprint 0EBFCD88 ausgeben=====

echo =====Docker Repository hinzufügen=====
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

/skripte/updater.sh

sudo apt-get install docker-ce docker-ce-cli containerd.io -y

echo =====Teste Docker Installation=====

sudo docker run hello-world

#docker run -it ubuntu bash

echo =====Portainer installieren=====

docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock portainer/portainer


