# Guardar como: organizar_videos.ps1

# Obtiene el directorio actual
$directorioActual = Get-Location

# Define las extensiones de video
$extensionesVideo = @(".mp4", ".mkv", ".avi", ".mov", ".wmv", ".flv")

# Obtiene todos los archivos en el directorio actual
$archivos = Get-ChildItem -File

foreach ($archivo in $archivos) {
    # Verifica si el archivo tiene una extensión de video
    if ($extensionesVideo -contains $archivo.Extension.ToLower()) {
        # Obtiene el nombre del archivo sin la extensión
        $nombreSinExtension = [System.IO.Path]::GetFileNameWithoutExtension($archivo.Name)
        
        # Crea una carpeta con el nombre del archivo (sin extensión)
        $carpetaDestino = Join-Path $directorioActual $nombreSinExtension
        if (-not (Test-Path $carpetaDestino)) {
            New-Item -ItemType Directory -Path $carpetaDestino | Out-Null
        }

        # Mueve el archivo de video a la carpeta correspondiente
        $rutaDestino = Join-Path $carpetaDestino $archivo.Name
        Move-Item -Path $archivo.FullName -Destination $rutaDestino
        Write-Host "Movido: $($archivo.Name) -> $carpetaDestino"
    }
}