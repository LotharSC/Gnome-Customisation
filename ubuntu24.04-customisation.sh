#!/bin/bash

echo "date et heure"
gsettings set org.gnome.desktop.interface clock-show-weekday true

echo "Suppression des fichiers temporaires et de la corbeille de plus de 30 jours"
gsettings set org.gnome.desktop.privacy remove-old-temp-files true
gsettings set org.gnome.desktop.privacy remove-old-trash-files true
gsettings set org.gnome.desktop.privacy old-files-age "30"

echo "Désactivation de l'envoi des rapports"
gsettings set org.gnome.desktop.privacy report-technical-problems false
echo "Désactivation des statistiques des logiciels"
gsettings set org.gnome.desktop.privacy send-software-usage-stats false

echo "Dock"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "BOTTOM"
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen true
gsettings set org.gnome.shell.extensions.dash-to-dock always-center-icons true
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false

echo "Couleurs"
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.interface gtk-theme 'Yaru-blue-dark'
gsettings set org.gnome.desktop.interface icon-theme 'Yaru-blue-dark'

echo "Fond d'écran"
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/Fuji_san_by_amaral.png'
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///usr/share/backgrounds/Fuji_san_by_amaral.png'
gsettings set org.gnome.desktop.screensaver picture-uri 'file:///usr/share/backgrounds/Fuji_san_by_amaral.png'

echo "Veille"
gsettings set org.gnome.desktop.session idle-delay 900

echo "Bureau"
gsettings set org.gnome.shell.extensions.ding start-corner 'top-left'
