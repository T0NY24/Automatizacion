# Configuración
$BackupDir = "C:\Backups"
$SourceDir = "C:\Users\anper\OneDrive\Escritorio\HEXABITE"
$DaysToKeep = 14

# Crea el directorio de respaldo si no existe
if (-not (Test-Path $BackupDir)) {
    New-Item -ItemType Directory -Path $BackupDir | Out-Null
}

# Realiza el respaldo de la carpeta
$BackupFile = Join-Path $BackupDir "backup_$(Get-Date -Format 'yyyyMMdd_HHmmss').zip"
Compress-Archive -Path $SourceDir -DestinationPath $BackupFile

# Elimina los archivos de respaldo antiguos
$OldBackups = Get-ChildItem -Path $BackupDir -File | Where-Object { $_.LastWriteTime -lt (Get-Date).AddDays(-$DaysToKeep) }
foreach ($OldBackup in $OldBackups) {
    Remove-Item -Path $OldBackup.FullName -Force
}