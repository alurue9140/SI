#!/bin/bash
fecha=$(date -u +"%Y%m%d%H")
hora=$(date +"%H%M")
mes=$(date +"%m")
dia=$(date +"%d")
carpeta=$"/home/equipo1/Samba-Publico/Rayos"
destino=$"$carpeta/$mes/$dia"

url1=$"https://www.aemet.es/imagenes_d/eltiempo/observacion/rayos/"$fecha"00_r79g.gif"

wget -O $destino"/Rayos-"$hora".gif" $url1 -a /var/log/rayos_$dia.log
