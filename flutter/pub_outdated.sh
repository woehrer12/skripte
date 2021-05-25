# Script Name:  Flutter check outdated
# Beschreibung: Prüft bei Flutter ob Pakete upgedated werden können.
# Aufruf:       /skripte/flutter/pub_outdated.sh
# Autor:        woehrer
# Version:      1
# Datum:        2021-05-24

#!/bin/bash

echo =====Flutter Outdated=====
#cd #Initialisiere

dart pub outdated

# Versiontest Version 1
# Tested by: woehrer
# Test date: 2021-05-24
# Test Systems: Ubuntu 20
