# Automatizacion
 Automatización de Tareas en Sistemas Operativos Distribuidos
**README.md**


En este e repositorio, encontrarás dos héroes  dispuestos a rescatar tus preciados datos del olvido: `backup_script.sh` y `backup_script.ps1`. ¡Prepárate para una épica odisea de automatización y seguridad!

## El Caballero de Bash: `backup_script.sh`

Este intrépido guerrero de código abierto es un experto en los entornos Linux y Unix. Con su espada de líneas de comandos afiladas, se encarga de proteger tus carpetas más valiosas de cualquier peligro.

¿Cómo lo hace? Sencillo:

1. Configura su base de operaciones (`BACKUP_DIR`) y el objetivo a respaldar (`SOURCE_DIR`).
2. Invoca sus poderosos hechizos `mkdir` y `tar` para crear y comprimir los respaldos en archivos mágicos `.tar.gz`.
3. Utiliza su legendario conjuro `find` para eliminar los respaldos antiguos que ya no son necesarios, manteniéndolo todo en orden.

Pero no te preocupes, nuestro héroe es amigable y fácil de configurar. Simplemente edita las variables al inicio del script y ¡listo! También puedes programarlo para que realice sus hazañas automáticamente cada cierto tiempo utilizando el mítico `cron`.

## El Caballero de PowerShell: `backup_script.ps1`

Este valiente defensor de los reinos de Windows es un maestro en la automatización y la administración de sistemas. Con su poderoso báculo de cmdlets, puede enfrentar cualquier desafío de respaldo que se le presente.

Su estrategia es impecable:

1. Establece sus bases (`$BackupDir`, `$SourceDir` y `$DaysToKeep`) para un ataque efectivo.
2. Crea un refugio seguro (`New-Item`) para almacenar los respaldos si no existe.
3. Invoca el hechizo `Compress-Archive` para condensar tus datos en archivos comprimidos `.zip`.
4. Utiliza el conjuro `Get-ChildItem` para identificar y eliminar los respaldos obsoletos con `Remove-Item`, manteniendo su guarida impecable.

Nuestro caballero de PowerShell es fácil de manejar y adaptable a tus necesidades. Simplemente ajusta las variables al inicio del script y ¡listo! Además, puedes programarlo para que realice sus tareas automáticamente utilizando el Programador de tareas de Windows.

## Conclusiones

¡No esperes más! Descarga estos poderosos scripts y comienza a proteger tus datos de inmediato. Ya sea en Linux o Windows, `backup_script.sh` y `backup_script.ps1` te brindarán la tranquilidad de saber que tus archivos están a salvo de cualquier peligro.

