sudo nano /etc/xdg/lxsession/LXDE-pi/autostart
Code-Sprache: Shell Session (shell)
In diese Datei muss du nun die folgenden Zeilen hinzufügen:

# Bildschirmschoner deaktivieren 
@xset s off
@xset -dpms
@xset s noblank

# Mauszeiger ausblenden
@unclutter

# Startet Chromium im Kiosk-Modus
@chromium-browser --kiosk https://electric-junkie.de/

+ config.txt
