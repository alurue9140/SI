#!/bin/bash
fecha=$(date +"%Y%m%d%H%M%s")
horaMinuto=$(date +"%H%M")
mes=$(date +"%m")
dia=$(date +"%d")

carpeta=$"/home/equipo1/Samba-Share-WebCam"
destino=$"$carpeta/$mes/$dia"

url=$"https://dl.dropboxusercontent.com/s/fmwhpgndxefl2t7/Cristofol.jpg?dl=0?data=20230326155628"$fecha
wget -O $destino"/Webcam_Xodos-"$horaMinuto".jpg" $url