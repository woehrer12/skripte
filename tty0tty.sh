# Script Name:  tty0tty
# Beschreibung: Installiert tty0tty
# Aufruf:       /skripte/tty0tty.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-11

#!/bin/bash

echo =====Skriptname=====
cd #Initialisiere

skripte/github.sh

git clone https://github.com/freemed/tty0tty

cd tty0tty/module

make

sudo cp tty0tty.ko /lib/modules/$(uname -r)/kernel/drivers/misc/

sudo depmod

sudo modprobe tty0tty

sudo chmod 666 /dev/tnt*

echo =====tty0tty ist installiert=====

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-01-10
# Test Systems: Ubuntu 18, Ubuntu 20, Ubuntu Server, Raspbian
