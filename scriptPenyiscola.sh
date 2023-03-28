#!/bin/bash
fecha=$(date +"%Y%m%d%H%M%s")
horaMinuto=$(date +"%H%M")
mes=$(date +"%m")
dia=$(date +"%d")

carpeta=$"/home/equipo1/Samba-Publico/Webcam_Penyiscola"
destino=$"$carpeta/$mes/$dia"

url=$"https://g0.ipcamlive.com/player/snapshot.php?alias=5750a365b7d90"

wget -O $destino"/Webcam_Penyiscola-"$horaMinuto".jpg" $url -a /var/log/cams_$dia.log
