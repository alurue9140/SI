#!/bin/bash
fecha=$(date -u +"%Y%m%d%H")
hora=$(date +"%H%M")
mes=$(date +"%m")
dia=$(date +"%d")
carpeta=$"/home/equipo1/Samba-Publico/Webcam_Polop"
destino=$"$carpeta/$mes/$dia"

url1=$"https://www.avametnuvol.es/estacions/c31m107e02/polop.jpg"

wget -O $destino"/Polop-"$hora".jpg" $url1 -a /var/log/cams_$dia.log
