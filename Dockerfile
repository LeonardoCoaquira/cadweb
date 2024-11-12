# Usa la imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos del proyecto al contenedor (esto puede ser opcional si ya tienes tus archivos en el contenedor)
COPY . /app

# Expone el puerto 9000
EXPOSE 9000

# Comando para ejecutar el servidor HTTP de Python
CMD ["python", "-m", "http.server", "9000"]
