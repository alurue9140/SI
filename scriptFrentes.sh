#!/bin/bash
fecha=$(date +"%Y%m%d")
fechaAyer=$(date -d "yesterday" +"%Y%m%d")
hora=$(date +"%H")
mes=$(date +"%m")
dia=$(date +"%d")
carpeta=$"/home/equipo1/Samba-Publico/Frentes"
destino=$"$carpeta/$mes/$dia"

url1=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fecha"00+000_ww_gpx0a000.gif"
url2=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fecha"12+024_ww_g1x0a2d1.gif"
url3=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fechaAyer"12+036_ww_g1x0a2c1.gif"
url4=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fechaAyer"12+048_ww_g1x0a2d2.gif"
url5=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fechaAyer"12+060_ww_g1x0a2c2.gif"
url6=$"https://www.aemet.es/imagenes_d/eltiempo/prediccion/mapa_frentes/"$fechaAyer"12+072_ww_g1x0a2d3.gif"

wget -O $destino"/1-Frentes-"$hora".gif" $url1
wget -O $destino"/2-Frentes-"$hora".gif" $url2
wget -O $destino"/3-Frentes-"$hora".gif" $url3
wget -O $destino"/4-Frentes-"$hora".gif" $url4
wget -O $destino"/5-Frentes-"$hora".gif" $url5
wget -O $destino"/6-Frentes-"$hora".gif" $url6
