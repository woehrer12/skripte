#Version 1 2021-01-06

#!/bin/bash
echo =====WSJTX 2.3.0-rc3=====

#name Der Download Datei
datei=wsjtx_2.3.0-rc3_amd64.deb

cd
echo =====WSJTX wird heruntergeladen=====
wget -N https://physics.princeton.edu/pulsar/k1jt/$datei
echo =====WSJTX wird installiert=====
sudo dpkg -i $datei
echo =====Download Datei wieder gelöscht=====
rm $datei
