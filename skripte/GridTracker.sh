#Version 1 2021-01-06

#!/bin/bash
echo =====GridTracker 1.20=====

#name Der Download Datei
datei=GridTracker-Linux-64-1.20.0927.tar.gz?dl=1 

cd
echo =====GridTracker wird heruntergeladen=====
wget -N https://www.dropbox.com/s/0rbduq0ibxrrj0e/$datei
echo =====GridTracker wird entpackt=====
tar xfv $datei
=====Download Datei wieder gelöscht=====
rm $datei
