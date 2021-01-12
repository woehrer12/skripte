# Script Name:  OS Version
# Beschreibung: Ermittelt die Betriebssystem Version und gibt diese aus
# Aufruf:       /skripte/os-version.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-01-12

#!/bin/bash

echo =====OS Version ermitteln=====
cd #Initialisiere

if [ -f /etc/os-release ]; then
    # freedesktop.org and systemd
    . /etc/os-release
    OS=$NAME
    VER=$VERSION_ID
elif type lsb_release >/dev/null 2>&1; then
    # linuxbase.org
    OS=$(lsb_release -si)
    VER=$(lsb_release -sr)
elif [ -f /etc/lsb-release ]; then
    # For some versions of Debian/Ubuntu without lsb_release command
    . /etc/lsb-release
    OS=$DISTRIB_ID
    VER=$DISTRIB_RELEASE
elif [ -f /etc/debian_version ]; then
    # Older Debian/Ubuntu/etc.
    OS=Debian
    VER=$(cat /etc/debian_version)
elif [ -f /etc/SuSe-release ]; then
    # Older SuSE/etc.
    ...
elif [ -f /etc/redhat-release ]; then
    # Older Red Hat, CentOS, etc.
    ...
else
    # Fall back to uname, e.g. "Linux <version>", also works for BSD, etc.
    OS=$(uname -s)
    VER=$(uname -r)
fi



echo $OS
echo $ARCH
echo $VERSION


# Versiontest Version 1
# Tested by: *
# Test date: *
# Test Systems: *
