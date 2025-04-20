# Organizador de Archivos de Video

Este proyecto contiene scripts diseñados para organizar automáticamente archivos de video en carpetas individuales, lo cual es especialmente útil para servicios de gestión de medios como **Jellyfin**, **Plex** o **Emby**. Estos servicios requieren que los archivos de video estén organizados en carpetas separadas para un correcto reconocimiento y catalogación.

## Propósito

El propósito principal de estos scripts es simplificar la organización de bibliotecas de medios al:

1. Crear una carpeta para cada archivo de video, utilizando el nombre del archivo (sin la extensión) como nombre de la carpeta.
2. Mover cada archivo de video a su carpeta correspondiente.

Esto asegura que los servicios de streaming como Jellyfin o Plex puedan identificar correctamente las películas o episodios y asociarlos con los metadatos adecuados.

## Scripts Disponibles

### 1. **Python Script (`organizar.py`)**
- Este script utiliza Python para realizar la organización.
- Es multiplataforma y puede ejecutarse en cualquier sistema operativo que tenga Python instalado.

#### Uso:
```bash
python3 organizar.py
```

### 2. **PowerShell Script (`organizar_videos.ps1`)**
- Diseñado para sistemas Windows con PowerShell.
- Ideal para usuarios que prefieren no instalar Python.

#### Uso:
```powershell
.\organizar_videos.ps1
```

### 3. **Bash Script (`organizar.sh`)**
- Diseñado para sistemas Linux o macOS.
- Requiere un entorno Bash.

#### Uso:
```bash
bash organizar.sh
```

## Requisitos

- **Python Script**: Requiere Python 3.x.
- **PowerShell Script**: Requiere PowerShell 5.0 o superior.
- **Bash Script**: Requiere Bash 4.0 o superior.

## Ejemplo de Organización

Supongamos que tienes los siguientes archivos en un directorio:

```
pelicula1.mp4
pelicula2.mkv
pelicula3.avi
```

Después de ejecutar cualquiera de los scripts, el directorio se reorganizará de la siguiente manera:

```
pelicula1/
    pelicula1.mp4
pelicula2/
    pelicula2.mkv
pelicula3/
    pelicula3.avi
```

## Aplicaciones

- **Jellyfin**: Organiza tus películas y episodios para que Jellyfin pueda reconocerlos correctamente.
- **Plex**: Mejora la detección de metadatos al mantener cada archivo en su propia carpeta.
- **Emby**: Facilita la gestión de bibliotecas multimedia.

## Contribuciones

Si tienes ideas para mejorar estos scripts o agregar soporte para otros servicios, ¡no dudes en contribuir!

## Licencia

Este proyecto está disponible bajo la licencia MIT. Consulta el archivo `LICENSE` para más detalles.