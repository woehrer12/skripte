#Version 1 2021-01-10

#!/bin/bash
echo =====ExpertSDR2 v.1.3.1 Update8=====

cd
echo =====SunSDR2DX wird herungergeladen=====
wget -N https://eesdr.com/images/software/ESDR2_1.3.1/ExpertSDR2%201.3.1%20update8%20SunSDR2DX%20Linux%20x64.tar.zip
echo =====SunSDR2DX wird entpackt=====
unzip 'ExpertSDR2 1.3.1 update8 SunSDR2DX Linux x64.tar.zip'
tar xvf 'ExpertSDR2 1.3.1 update8 SunSDR2DX Linux x64.tar.xz'
echo =====Download Datei wieder gelöscht=====
rm 'ExpertSDR2 1.3.1 update8 SunSDR2DX Linux x64.tar.xz'
rm 'ExpertSDR2 1.3.1 update8 SunSDR2DX Linux x64.tar.zip'
