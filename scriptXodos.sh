#!/bin/bash
horaMinuto=$(date +"%H%M")
mes=$(date +"%m")
dia=$(date +"%d")

carpeta=$"/home/equipo1/Samba-Publico/Webcam_Xodos"
destino=$"$carpeta/$mes/$dia"

url=$"https://dl.dropboxusercontent.com/s/fmwhpgndxefl2t7/Cristofol.jpg"

wget -O $destino"/Webcam_Xodos-"$horaMinuto".jpg" $url -a /var/log/cams_$dia.log
