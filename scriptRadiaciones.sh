#!/bin/bash

# Obtener la fecha actual
fecha=$(date +%Y%m%d)

# Extraer el número del mes y del día de la fecha actual
mes=${fecha:4:2}
dia=${fecha:6:2}

# Crear la ruta de la carpeta de destino
destino="/home/equipo1/Samba-Publico/Radiación/$mes/$dia"

# Descargar las imágenes para las diferentes horas de predicción
for hora in 24 48 72 96 120; do
  # Crear el nombre del archivo de destino
  archivo="$destino/Radiacion_$hora.gif"

  # Descargar la imagen de Meteosat utilizando wget
  wget "https://www.aemet.es/imagenes_d/eltiempo/prediccion/radiacionuv/uvi_PEN_$hora.gif" -O "$archivo"
done
