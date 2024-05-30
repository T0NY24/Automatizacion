#!/bin/bash

# Configuración
BACKUP_DIR="/home/$USER/backups"
SOURCE_DIR="/home/$USER/Documents/CarpetaARespaldar"
DAYS_TO_KEEP=14

# Crea el directorio de respaldo si no existe
mkdir -p "$BACKUP_DIR"

# Realiza el respaldo de la carpeta
backup_file="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar -czf "$backup_file" "$SOURCE_DIR"

# Elimina los archivos de respaldo antiguos
find "$BACKUP_DIR" -type f -mtime +"$DAYS_TO_KEEP" -exec rm {} \;

#Haz que el script sea ejecutable con el siguiente comando:
chmod +x respaldo_carpeta.sh

#Para ejecutar el script manualmente, simplemente escribe
./respaldo_carpeta.sh

#Para programar la ejecución automática del script cada 2 días
crontab -e

#Agrega la siguiente línea al final del archivo

0 0 */2 * * /home/$USER/respaldo_carpeta.sh