#Version 1 2021-01-06

#!/bin/bash

skripte/updater.sh

cd /opt/iobroker

echo =====IOBroker gestoppt=====
sudo iobroker stop

echo =====IOBroker Update=====
sudo iobroker update

echo =====IOBroker Upgrade Self=====
sudo iobroker upgrade self

echo =====IOBroker Start=====
sudo iobroker start

