import os
import shutil

def organizar_videos():
    # Obtiene el directorio actual donde se encuentra el script
    directorio_actual = os.getcwd()
    
    # Lista todos los archivos en el directorio actual
    archivos = os.listdir(directorio_actual)
    
    # Filtra los archivos de video (puedes ajustar las extensiones según sea necesario)
    extensiones_video = ('.mp4', '.mkv', '.avi', '.mov', '.wmv', '.flv')
    videos = [archivo for archivo in archivos if archivo.lower().endswith(extensiones_video)]
    
    for video in videos:
        # Obtiene el nombre del archivo sin la extensión
        nombre_sin_extension = os.path.splitext(video)[0]
        
        # Crea una carpeta con el nombre del archivo (sin extensión)
        carpeta_destino = os.path.join(directorio_actual, nombre_sin_extension)
        os.makedirs(carpeta_destino, exist_ok=True)
        
        # Mueve el archivo de video a la carpeta correspondiente
        ruta_origen = os.path.join(directorio_actual, video)
        ruta_destino = os.path.join(carpeta_destino, video)
        shutil.move(ruta_origen, ruta_destino)
        print(f"Movido: {video} -> {carpeta_destino}")

if __name__ == "__main__":
    organizar_videos()