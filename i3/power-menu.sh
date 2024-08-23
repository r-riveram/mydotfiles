#!/bin/bash

options="Apagar\nReiniciar\nCerrar sesión\nCancelar"

selected=$(echo -e $options | rofi -dmenu -i -p "")

case $selected in
    "Apagar")
        systemctl poweroff
        ;;
    "Reiniciar")
        systemctl reboot
        ;;
    "Cerrar sesión")
        i3-msg exit
        ;;
    "Cancelar")
        exit 0
        ;;
esac
